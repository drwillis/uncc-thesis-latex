%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This package contains all commands (including \usepackage commands)that are   %
% needed for the UNCC thesis document.                                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Identify the class name and version
\ProvidesClass{UNCC-thesis}[2015/01/23 v0.3.0 UNCC Thesis document class for LaTeX]

% This class depends on LaTeX2e
\NeedsTeXFormat{LaTeX2e}

% Options we know we want from the UNCC graduate school guidelines
\PassOptionsToClass{letterpaper,12pt,oneside,onecolumn,titlepage,final}{book}

% Pass all other options to the book class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}

% Process options and we're done with this section
\ProcessOptions  \relax

% Load the book class, which is being modified
\LoadClass{book}

% This package is a custom style file (unccspecs.sty) contains commands that format the document
% according to UNCC thesis manual specifications.
\usepackage{unccspecs}
 
% Scott - For Windows and LEd compatibitility, PSTricks was separated from the node and tree packages, and [pdf] was added (so pdflatex command can compile). Also, auto-pst-pdf allows postscript-to-pdf conversion of the tree- creating macros mentioned below. See this thread for more info: http://tex.stackexchange.com/questions/8413/how-to-use-pstricks-in-pdflatex
\usepackage[pdf]{pstricks}
\usepackage[off]{auto-pst-pdf}

% This allows for tree- creating macros
% from the pstricks graphics package.
\usepackage{pst-node,pst-tree} 

% This allows for data plotting macros from the pstricks
% package.
\usepackage{pst-plot} 


\usepackage{amsmath} % This allows more mathematical formatting macros.
\usepackage{amsfonts} % This allows more mathematical fonts.

% This allows files contents to be printed in the latex
% document as is (without latex formatting).
\usepackage{verbatim} 

