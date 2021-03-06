% =========================================================================
% CLASSE LaTeX POUR LA REDACTION DE TH�SE
% 
% Julien Chiquet
%
% N�cessite au moins un fichier de style pour la th�se
% plus le fichier de style pour les pages administratives

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{these_gi}[2005/09/21 Classe pour ma th�se]

%% Les differents styles 
\newif\if@stylejchiquet \@stylejchiquetfalse
% POUR L'INSTANT UN SEUL !!!

%% Chargement de la classe book, avec transfert d'options
\PassOptionsToClass{a4paper}{book}
\PassOptionsToClass{11pt}{book}
\PassOptionsToClass{twoside}{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\DeclareOption{stylejchiquet}{\@stylejchiquettrue}
\DeclareOption*{}
\ProcessOptions
\LoadClass{book}

% ==========================================================================
% PACKAGES STANDARD REQUIS

% FONTS ET CARACT�RES
\usepackage[latin1]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{eurosym}
%\usepackage{natbib}
\usepackage[cyr]{aeguill}
\usepackage[francais]{babel}
\usepackage[pdftex,
			pdfauthor={Etienne Combrisson},
			pdftitle={D�codage des intentions et des repr�sentations motrices chez l'homme: analyse multi-�chelle et application aux interfaces cerveau-machine},
			pdfsubject={Thesis},
			pdfkeywords={D�codage; encodage; machine-learning; puissance; phase; phase-amplitude coupling; seeg}]{hyperref}
\usepackage[dvipsnames]{xcolor}
\hypersetup{hidelinks=true,urlcolor=MidnightBlue,citecolor=PineGreen,colorlinks,linkcolor=BrickRed}


%\usepackage{babel}
\frenchspacing
\RequirePackage{eurosym}
\RequirePackage{xcolor}

\usepackage{blindtext}
\usepackage{pdfpages}
\usepackage{pythonhighlight}
% \usepackage{listings}             % Include the listings-package
% \lstset{language=Python}

\usepackage{silence}

\WarningFilter{minitoc(hints)}{W0023}
\WarningFilter{minitoc(hints)}{W0028}
\WarningFilter{minitoc(hints)}{W0030}

\WarningFilter{blindtext}{} % this takes care of the `blindtext` messages

% ============================================================================
% CHARGEMENT DE LA FEUILLE DE STYLE CHOISIE
\if@stylejchiquet
  \RequirePackage{stylejchiquet}
\fi
