\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jamk}[2017-07-11 Jamkin asiakirjamalli]
\RequirePackage{titlesec}
\RequirePackage{geometry}
 \geometry{
 a4paper,
 total={170mm,257mm},
 left=20mm,
 right=20mm,
 top=20mm,
 textwidth=13cm,
 }
\def\@@ptsize{12pt}
\renewcommand{\familydefault}{\sfdefault}
\RequirePackage[utf8]{inputenc}
\RequirePackage{fontspec}
\setmainfont{TeX Gyre Termes}
\renewcommand{\baselinestretch}{1.5}
\RequirePackage{graphicx}
\RequirePackage[absolute,overlay]{textpos}
\RequirePackage{tikz}
\RequirePackage{color}
\definecolor{jamkblue}{RGB}{0, 90, 125}
\newcommand{\makejamktitle}{
  \begin{titlepage}
    \begin{tikzpicture}[remember picture,overlay,shift={(25mm,-5mm)}]
      \node (0,0)
        {\includegraphics[width=58.7mm]{jamkfi.png}};
    \end{tikzpicture}
    \begin{tikzpicture}[remember picture,overlay,shift={(-27mm,-255mm)}]
      \fill [jamkblue] (9.51mm,257.19mm) rectangle (0,0);
    \end{tikzpicture}
    \begin{tikzpicture}[remember picture,overlay,shift={(35mm,-255mm)}]
      \node (0,0)
        {\includegraphics[width=87.21mm]{jamkfi_long.png}};
    \end{tikzpicture}
    \leftskip=23mm
    \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\
    \textbf{\Huge Opinnäytetyön nimi} \\
    \textbf{\Large Mahdollinen alanimi} \\
    \\
    \\
    {
    \large Etunimi Sukunimi
    \\
    \\
    \\
    \\
    \\
    \\
    \\
    \\
    Opinnäytetyö \\
    Kuukausi Vuosi \\
    Tutkinto-ohjelman nimi esim. Logistiikan koulutusohjelma \\
    Koulutusalan nimi esim.Tekniikan ja liikenteen ala
    }

  \end{titlepage}
}
\setlength{\parindent}{0mm}

% First degree heading.
\titleformat{\section}
  {\bfseries\Large}
  {\thesection}{1em}
  {}

% Second degree heading.
\titleformat{\subsubsection}
  {\bfseries\large}
  {\thesubsection}{1em}
  {}

% Third degree heading.
\titleformat{\subsubsubsection}
  {}
  {\thesubsubsection}{1em}
  {}
