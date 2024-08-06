# MDL files, 1971-1987
This repository contains a set of files from 1971-1987 that consist of the source and related files for the [MDL programming language](https://en.wikipedia.org/wiki/MDL_(programming_language)) also known as Muddle. MDL was created in 1970 at the Massachusetts Institute of Technology (MIT) Artificial Intelligence (AI) lab and the Dynamic Modeling (DM) Group as part of Project MAC. The files are a part of the [Massachusetts Institute of Technology, Tapes of Tech Square (ToTS) collection](https://archivesspace.mit.edu/repositories/2/resources/1265) at the MIT Libraries Department of Distinctive Collections (DDC). Most files were originally created on the ITS operating system but some may have been from TOPS-20 or other later operating systems.

## File organization and details
### [mdl](../main/mdl)
The files within this directory are the MDL specific files from 64 different tape image files in an extracted set by MIT CSAIL in the [ToTS collection](https://archivesspace.mit.edu/repositories/2/resources/1265) of which constitute the files needed to create multiple working versions.

Included in this set are the MDL 54, 55, and post-55 (before the Dynamic Modeling Group was shutdown), interpreter (MUDSYS), compiler (COMPIL, NCOMPI, XCOMPI), assembler (MPROG), and runtime. 

Most files were copied from pre-extracted files from tape images. Files were most likely extracted using a version of the [itstar program](https://github.com/PDP-10/itstar) or for TOPS-20 tapes a version of the [tapeutils/read20 program](https://github.com/brouhaha/tapeutils/blob/master/read20.c). MIT CSAIL extracted many files from tape images prior to their transfer to DDC in 2017. The files extracted from the tape images were put into sub-folders with a corresponding name to their original tapes in the `part5/its20x` directory in ToTS. DDC Digital Archivist Joe Carrano extracted the files in from tapes `3100015`, `3100150`, and `3100151` using itstar as they were not present in the `part5/its20x` directory. All filenames have been adapted to Unix conventions. The original filename syntax would be formatted like, `MUDDLE; MUDHAK 2`, for example. All files have been placed into this artificial `mdl` directory for organizational purposes.
### [codemeta.json](../main/codemeta.json)
This file is metadata about the MDL files, using the [CodeMeta Project](https://codemeta.github.io/) schema.
### [LICENSE](../main/LICENSE)
This file describes the details about the rights to these files. See [Rights](#rights) for additional information.
### [README.md](../main/README.md)
This file is the readme detailing the content and context for this repository.
### [tree.txt](../main/tree.txt)
A file tree listing the files in the [`mdl`](../main/mdl) directory showing the original file timestamps as extracted from the tape image.
## Preferred Citation
[filename], MDL files, 1971-1987, Massachusetts Institute of Technology, Tapes of Tech Square (ToTS) collection, MC-0741. Massachusetts Institute of Technology, Department of Distinctive Collections, Cambridge, Massachusetts. [swh:1:dir:db28f45224f4d7019a10d2e8507d6ae1d44d9782](https://archive.softwareheritage.org/swh:1:dir:db28f45224f4d7019a10d2e8507d6ae1d44d9782)
## Rights
To the extent that MIT holds rights in these files, they are released under the terms of the [MIT License](https://opensource.org/licenses/MIT). See the `LICENSE` file for more information. Any questions about permissions should be directed to [permissions-lib@mit.edu](mailto:permissions-lib@mit.edu)
## Acknowledgements
Thanks to [Eric Swenson](https://github.com/eswenson1) for help with identifying these files.
