\NeedsTeXFormat{LaTeX2e}[1994/06/01] 
\ProvidesClass{oposicion}
%[Clase para pruebas de oposicion de los concursos con el formato tipico que piden en DF-FCEN UBA]

\LoadClass[12pt,a4paper]{article}

% Paquetes
%% Captions 
\RequirePackage{caption}
\RequirePackage{subcaption}

%% Estilo
\RequirePackage{fancyhdr}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{psfrag}

%% Idioma
\RequirePackage[spanish]{babel}
\RequirePackage[utf8]{inputenc}

%% Símbolos
\RequirePackage{amsmath}
\RequirePackage{amssymb}


\RequirePackage{paralist}

\DeclareOption*{\PassOptionToClass{\CurrentOption}{article}}
\ProcessOptions

\graphicspath{{./fig/}, {./}}
\def\DeclareAuthorVariable#1{\@namedef{#1}##1{\@namedef{@#1}{##1}}}
\DeclareAuthorVariable{nombre}

% Estilo
\renewcommand{\familydefault}{\sfdefault}
\geometry{
  left=1.0cm,
  top=2.0cm,
  head=1.0cm,
  foot=0.5cm,
  right=1.0cm,
  bottom=1.1cm
}

\pagestyle{fancy}
\lhead{}
\chead{}
\rhead{\@nombre}
\lfoot{}
\cfoot{}
\rfoot{\thepage}

\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0.5pt}

\linespread{1.3}

\endinput