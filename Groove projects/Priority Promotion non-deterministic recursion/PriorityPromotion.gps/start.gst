<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n0">
            <attr name="layout">
                <string>125 91 66 54</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>318 91 66 54</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>115 244 66 54</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>535 89 66 54</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>321 245 66 54</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>537 243 66 54</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>734 246 66 54</string>
            </attr>
        </node>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>let:parity = 1</string>
            </attr>
        </edge>
        <edge from="n0" to="n1">
            <attr name="label">
                <string>edge</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>let:priority = 1</string>
            </attr>
        </edge>
        <edge from="n0" to="n2">
            <attr name="label">
                <string>edge</string>
            </attr>
            <attr name="layout">
                <string>500 0 158 118 135 194 148 271 11</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:Vertex</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>let:parity = 1</string>
            </attr>
        </edge>
        <edge from="n1" to="n4">
            <attr name="label">
                <string>edge</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>let:priority = 2</string>
            </attr>
        </edge>
        <edge from="n1" to="n3">
            <attr name="label">
                <string>edge</string>
            </attr>
            <attr name="layout">
                <string>500 0 351 118 458 110 568 116 11</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>type:Vertex</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>type:Vertex</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>let:priority = 3</string>
            </attr>
        </edge>
        <edge from="n2" to="n5">
            <attr name="label">
                <string>edge</string>
            </attr>
            <attr name="layout">
                <string>500 0 148 271 361 339 570 270 11</string>
            </attr>
        </edge>
        <edge from="n2" to="n0">
            <attr name="label">
                <string>edge</string>
            </attr>
            <attr name="layout">
                <string>500 0 148 271 170 198 158 118 11</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>let:parity = 1</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>let:priority = 4</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>let:parity = 1</string>
            </attr>
        </edge>
        <edge from="n3" to="n1">
            <attr name="label">
                <string>edge</string>
            </attr>
            <attr name="layout">
                <string>500 0 568 116 459 129 351 118 11</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>type:Vertex</string>
            </attr>
        </edge>
        <edge from="n4" to="n3">
            <attr name="label">
                <string>edge</string>
            </attr>
        </edge>
        <edge from="n4" to="n2">
            <attr name="label">
                <string>edge</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>let:parity = 0</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>let:priority = 6</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>type:Vertex</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>type:Vertex</string>
            </attr>
        </edge>
        <edge from="n5" to="n3">
            <attr name="label">
                <string>edge</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>let:priority = 7</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>let:parity = 0</string>
            </attr>
        </edge>
        <edge from="n5" to="n6">
            <attr name="label">
                <string>edge</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>let:parity = 1</string>
            </attr>
        </edge>
        <edge from="n6" to="n3">
            <attr name="label">
                <string>edge</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>type:Vertex</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>let:priority = 9</string>
            </attr>
        </edge>
    </graph>
</gxl>
