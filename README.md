# LaTeX academicthesis Class

A **scalable and modular LaTeX class** for university theses, designed to support multiple academic levels (**Bachelor, Master, PhD**) and to be easily customizable for different universities, layouts, and languages.

## Features

- Support for multiple thesis levels: **Bachelor / Master / PhD**
- Extensible architecture for **multiple university templates**
- Built-in **multi-language support**
- Clean, modular, and reusable class structure
- Designed with future CTAN distribution in mind

## Installation

Installation instructions will be provided once the project reaches a stable release.

## Usage

Basic example:

```tex
\documentclass{academicthesis}
\begin{document}
% Your thesis content
\end{document}

```

## License
The license applied is the LPPL

## Repository Structure
The class is defined in the main file `Thesis.cls`, which loads all the components required for proper functionality.
Supporting files are organized within the `Files/ directory`, which contains the core infrastructure of the class.

### Core files

- `Thesis.cls`  
  Main class file.

- `Files/options.tex`  
  Defines all global class options.

- `Files/meta.tex`  
  Stores metadata variables and user-level commands.

- `Files/formats.tex`  
  Generic formatting logic and university format loader.

- `Files/formats/`  
  University-specific formatting files.

- `Files/lang.tex`  
  Language loader.

- `Files/lang/`  
  Language label definitions.
