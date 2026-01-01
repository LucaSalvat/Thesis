%% Thesis.cls
%% Copyright 2025 Luca Salvatore
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   https://www.latex-project.org/lppl.txt
% and version 1.3c or later is part of all distributions of LaTeX
% version 2008 or later.
%
% This work has the LPPL maintenance status `maintained'.
% 
% The Current Maintainer of this work is Luca Salvatore.
%
% This work consists of the files Thesis.cls and the derived file associated with this file.


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
