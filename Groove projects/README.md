# Groove Projects
Groove projects modelling (extensions of) the _priority promotion_ algorithm to solve parity games.

**Last updated:** _June 29th, 2019_.

## Prerequisites
- Java 8 ([java.com](https://java.com)).
- Groove ([sf.net/projects/groove](https://sf.net/projects/groove)).

Note that at the time of writing, Groove does not function properly when using newer versions of Java.

## Usage Instructions
1. Execute `Simulator.jar` in the `bin` directory of Groove using Java 8.
2. Open the `File` menu and select `Load Grammar`.
3. Select one of the Groove projects (`.gst` directories) as provided in this repository.

For more detailed usage instructions on how to use Groove, we refer to `usermanual.pdf` in the Groove directory.

## Priority Promotion Variants
This repository contains the following four Groove projects:
1. **Priority Promotion:** the default version of the Priority Promotion algorithm modelled using graph transformations in Groove. Contains non-deterministic attractor computation, which can be disabled by setting the exploration strategy to _Linear Exploration_.
2. **Priority Promotion compact:** same as (1), but formatted in a more compact form in order to save space in the research paper.
3. **Priority Promotion recursive:** recursive variant of the Priority Promotion algorithm, that recursively searches non-closed regions for dominions. Contains the same non-deterministic attractor computation as in (1).
4. **Priority Promotion non-deterministic closed region handling:** variant of the Priority Promotion algorithm that non-deterministically chooses between handling and ignoring closed regions. Contains the same non-deterministic attractor computation as in (1).
