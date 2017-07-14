\LoadClass[12pt]{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jamk}
\RequirePackage{titlesec}
\RequirePackage{geometry}
 \geometry{
 a4paper,
 total={170mm,257mm},
 left=43mm,
 right=20mm,
 top=20mm,
 textwidth=13cm,
 }
 \RequirePackage[sfdefault,lf]{carlito}

% ToC, LoF and LoT title formatting.
\RequirePackage{tocloft}
\renewcommand{\cfttoctitlefont}{\LARGE\textbf}
%\renewcommand{\cftaftertoctitle}{\hfill}
\renewcommand{\cftloftitlefont}{\Large\textbf}
%\renewcommand{\cftafterloftitle}{\hfill}
\renewcommand{\cftlottitlefont}{\Large\textbf}
%\renewcommand{\cftafterlottitle}{\hfill}

% TOC entry formats.
\RequirePackage{titletoc}
\titlecontents{section}
  [0mm]{\vskip5mm\bfseries\large}{\contentslabel{1em}}{}{\titlerule*[1mm]{.}\contentspage}
\titlecontents{subsection}
  [10mm]{\large}{\contentslabel{2em}}{}{\titlerule*[1mm]{.}\contentspage}
\titlecontents{subsubsection}
  [20mm]{\large}{\contentslabel{2em}}{}{\titlerule*[1mm]{.}\contentspage}
\titlecontents{figure}
  [0mm]{}
  {\contentslabel{7mm}}{}
  {\titlerule*[1mm]{.}\contentspage}
\titlecontents{table}
  [0mm]{}
  {\contentslabel{7mm}}{}
  {\titlerule*[1mm]{.}\contentspage}

\RequirePackage[utf8]{inputenc}

% Line spacing.
\renewcommand{\baselinestretch}{1.5}

\RequirePackage{graphicx}
\RequirePackage[absolute,overlay]{textpos}
\RequirePackage{tikz}
\RequirePackage{color}
\definecolor{jamkblue}{RGB}{0, 90, 125}
%\leftskip=23mm

% Jamk titlepage command.
\newcommand{\makejamktitle}[9]{
    \def\tempa{#1}
    \def\tempb{#2}
    \def\tempc{#3}
    \def\tempd{#4}
    \def\tempe{#5}
    \def\tempf{#6}
    \def\tempg{#7}
    \def\temph{#8}
    \def\tempi{#9}
    \makejamktitlecont
}
\newcommand{\makejamktitlecont}[1]{
  \begin{titlepage}
    \begin{tikzpicture}[remember picture,overlay,shift={(29mm,-4mm)}]
      \node (0,0)
        {\includegraphics[width=58.7mm]{jamkfi.png}};
    \end{tikzpicture}
    \begin{tikzpicture}[remember picture,overlay,shift={(-24mm,-255mm)}]
      \fill [jamkblue] (9.51mm,257.19mm) rectangle (0,0);
    \end{tikzpicture}
    \begin{tikzpicture}[remember picture,overlay,shift={(38mm,-252mm)}]
      \node (0,0)
        {\includegraphics[width=87.21mm]{jamkfi_long.png}};
    \end{tikzpicture}
    \\ \\ \\ \\ \\ \\ \\ \\ \\
    \textbf{\fontsize{26pt}{26pt}\selectfont \tempa}\par
    \textbf{\fontsize{18pt}{18pt}\selectfont \tempb} \\
    \linespread{1}\fontsize{14pt}{14pt}\selectfont{
      \\ \\ \\
      \tempc \\
      \tempd \\
      \tempe \\
      \tempf \\
      \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\
      \tempg \\
      \temph \\
      \tempi \\
      #1
    }

  \end{titlepage}
  \tableofcontents
  \listoffigures
  \listoftables

  \newpage
}
\setlength{\parindent}{0mm}
\setlength{\parskip}{2.5mm}

% Figures and captions.
\renewcommand{\fps@figure}{!ht}

\RequirePackage{caption}
\captionsetup{format=plain,
              labelfont=it,
              singlelinecheck=false,
              justification=raggedright,
              skip=0pt,
              margin=0pt}

% Headers and footers.
\RequirePackage{fancyhdr}
% This is required so that TOC-page has same header and footer as others do.
\fancypagestyle{plain}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \fancyhead[R]{\thepage}
}
% Then same for rest of the pages.
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\rhead{\thepage}

% First degree heading.
\titleformat{\section}
  {\fontsize{18pt}{12pt}\bfseries}
  {\thesection}{1em}
  {}

% Second degree heading.
\titleformat{\subsection}
  {\fontsize{16pt}{12pt}\selectfont}
  {\thesubsection}{1em}
  {}

% Third degree heading.
\titleformat{\subsubsection}
  {\fontsize{14pt}{12pt}\selectfont}
  {\thesubsubsection}{1em}
  {}
