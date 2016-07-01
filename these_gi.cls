% =========================================================================
% CLASSE LaTeX POUR LA REDACTION DE THÈSE
% 
% Julien Chiquet
%
% Nécessite au moins un fichier de style pour la thèse
% plus le fichier de style pour les pages administratives

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{these_gi}[2005/09/21 Classe pour ma thèse]

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

% FONTS ET CARACTÈRES
\usepackage[latin1]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{eurosym}
%\usepackage{natbib}
\usepackage[cyr]{aeguill}
\usepackage[francais]{babel}
\usepackage[pdftex,
			pdfauthor={Etienne Combrisson},
			pdftitle={Décodage des intentions et des représentations motrices chez l'homme: analyse multi-échelle et application aux interfaces cerveau-machine},
			pdfsubject={Thesis},
			pdfkeywords={Décodage; encodage; machine-learning; puissance; phase; phase-amplitude coupling; seeg}]{hyperref}
\hypersetup{hidelinks=true}

%\usepackage{babel}
\frenchspacing
\RequirePackage{eurosym}
\RequirePackage{xcolor}

\usepackage{blindtext}
\usepackage{pdfpages}

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
