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


% ----------------------------------------------------
% Class declaration and option processing
% ----------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{academicthesis}[2026/01/01 Unified academic thesis class]

% Options defined in Files/options.tex; anything unknown is forwarded to book
% Fail fast with a clear error if the support files are not on TeX's input path.
\InputIfFileExists{Files/options.tex}{}{%
  \ClassError{academicthesis}%
    {Missing Files/options.tex}%
    {Ensure the Files/ directory is available alongside academicthesis.cls.}%
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass{book}


% ----------------------------------------------------
% Engine-aware font and language setup
% ----------------------------------------------------
\RequirePackage{iftex}

% pdfTeX path uses babel; XeTeX/LuaTeX alternative is retained for reference
%\ifPDFTeX
  \RequirePackage[T1]{fontenc}
  \RequirePackage[utf8]{inputenc}
  \RequirePackage{lmodern}
  \RequirePackage[\th@lang]{babel}
%
%\else
%  \RequirePackage{fontspec} % strongly recommended with polyglossia
%  \RequirePackage{polyglossia}
%  \setmainlanguage{\th@lang}
%
%  % Optional: keep a similar look to lmodern
%  \setmainfont{Latin Modern Roman}
%  \setsansfont{Latin Modern Sans}
%  \setmonofont{Latin Modern Mono}
%\fi


% ----------------------------------------------------
% Core packages for layout and metadata handling
% ----------------------------------------------------
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{expl3}
\RequirePackage{xparse}
\RequirePackage{keyval}
\RequirePackage{etoolbox}
\RequirePackage{fancyhdr}
\RequirePackage{xcolor}

% Drop-cap configuration
\RequirePackage{type1cm}
\RequirePackage{lettrine}
%\renewcommand{\LettrineFontHook}{\color[gray]{0.3}} there are some local definition
\setcounter{DefaultLines}{2}
\renewcommand{\LettrineTextFont}{\normalfont}
\renewcommand{\DefaultLoversize}{0.25}
\renewcommand{\DefaultLhang}{0.25}

% Math utilities
\RequirePackage{amsmath}


% ----------------------------------------------------
% Load user-facing strings and formatting helpers
% ----------------------------------------------------
\InputIfFileExists{Files/meta.tex}{}{%
  \ClassError{academicthesis}%
    {Missing Files/meta.tex}%
    {Ensure the Files/ directory is available alongside academicthesis.cls.}%
}
\InputIfFileExists{Files/lang.tex}{}{%
  \ClassError{academicthesis}%
    {Missing Files/lang.tex}%
    {Ensure the Files/ directory is available alongside academicthesis.cls.}%
}
\InputIfFileExists{Files/formats.tex}{}{%
  \ClassError{academicthesis}%
    {Missing Files/formats.tex}%
    {Ensure the Files/ directory is available alongside academicthesis.cls.}%
}

