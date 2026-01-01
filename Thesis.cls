\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[2025/12/28]

% ---- options only
\input{Files/options}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax

\LoadClass{book}


\RequirePackage[T1]{fontenc}   % proper accented glyphs, hyphenation
\RequirePackage[utf8]{inputenc}% UTF-8 source (harmless on new LaTeX)
\RequirePackage{lmodern}       % scalable Latin Modern fonts
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{expl3}
\RequirePackage{xparse}
\RequirePackage{keyval}
\RequirePackage{etoolbox}
\RequirePackage{fancyhdr}
\RequirePackage[dvipsnames]{xcolor}


% load language strings (safe here)
\input{Files/meta}
\input{Files/lang}
\input{Files/formats}



% load formatting commands (safe here)
%\input{Files/formats/luiss}
%\newcommand{\prova}{\LIS@luiss}
