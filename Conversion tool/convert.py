import sys
import os


class ParityGame:
    def __init__(self):
        self.vertices = []

    def add_vertex(self, line):
        parts = line.split(" ")
        if len(parts) >= 4:
            self.vertices.append(Vertex(parts))

    def get_xml(self):
        lines = [self.get_start_xml()]
        lines.extend(self.get_vertices())
        lines.extend(self.get_edges())
        lines.append(self.get_end_xml())
        return lines

    def get_vertices(self):
        vertices = []
        for vertex in self.vertices:
            vertices.append(vertex.get_vertex_xml())
        return vertices

    def get_edges(self):
        edges = []
        for vertex in self.vertices:
            edges.extend(vertex.get_labels_xml())
            edges.extend(vertex.get_edges_xml())
        return edges

    @staticmethod
    def get_start_xml():
        return '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>' \
               '<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">' \
               '<graph role="graph" edgeids="false" edgemode="directed" id="start">' \
               '<attr name="$version"><string>curly</string></attr>'

    @staticmethod
    def get_end_xml():
        return '</graph></gxl>'


class Vertex:
    def __init__(self, parts):
        self.id = parts[0]
        self.priority = parts[1]
        self.parity = parts[2]
        self.edges = []
        for target in parts[3].split(","):
            self.edges.append(target.split(";")[0])

    def get_vertex_xml(self):
        return '<node id="n%s"><attr name="layout"><string>%d %d %d %d</string></attr></node>' \
               % (self.id, (int(self.id) % 4) * 200 + 125, (int(self.id) // 4) * 150 + 100, 75, 54)

    def get_labels_xml(self):
        edges = ['<edge from="n%s" to="n%s"><attr name="label"><string>type:Vertex</string></attr></edge>'
                 % (self.id, self.id),
                 '<edge from="n%s" to="n%s"><attr name="label"><string>let:parity = %s</string></attr></edge>'
                 % (self.id, self.id, self.parity),
                 '<edge from="n%s" to="n%s"><attr name="label"><string>let:priority = %s</string></attr></edge>'
                 % (self.id, self.id, self.priority)]
        return edges

    def get_edges_xml(self):
        edges = []
        for edge in self.edges:
            edges.append('<edge from="n%s" to="n%s"><attr name="label"><string>edge</string></attr></edge>'
                         % (self.id, edge))
        return edges


def read_spoink(target):
    parity_game = ParityGame()
    with open(target) as file:
        for line in file:
            parity_game.add_vertex(line)
    return parity_game


def write_xml(target, parity_game):
    lines = parity_game.get_xml()
    with open(target, "w") as file:
        for line in lines:
            file.write(line + "\n")
        print("Conversion complete! Groove output file %s created." % target)


def main(args):
    targets = []
    if len(args) <= 1:
        files = os.listdir(os.curdir)
        for file in files:
            if os.path.isfile(file) and "." not in file:
                targets.append((file, file))
    elif len(args) == 2:
        targets.append((args[1], args[1]))
    else:
        targets.append((args[1], args[2]))
    for (source, destination) in targets:
        parity_game = read_spoink(source)
        write_xml(destination if destination.endswith(".gst") else destination + ".gst", parity_game)


main(sys.argv)
