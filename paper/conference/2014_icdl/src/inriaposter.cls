% Authors:
% - Edouard Grave
% - Olivier Mangin

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{inriaposter}[2013/06/19 Class for INRIA posters]

\LoadClassWithOptions{a0poster}

\usepackage{multicol}
\usepackage[dvipsnames]{xcolor}
\usepackage{graphicx}
\usepackage{wrapfig}
\usepackage{tikz}

\usepackage[right=1cm,left=1cm,top=1cm,bottom=1cm]{geometry}
\setlength{\parindent}{0.0cm}
\renewcommand{\sfdefault}{lmss}

\definecolor{orangeinria}{RGB}{227,55,41} % Orange INRIA
\definecolor{color1}{RGB}{227,55,41} % Orange INRIA
\definecolor{color2}{RGB}{116,101,110} % Blue INRIA
\definecolor{orange}{RGB}{243,154,38}
\definecolor{red}{RGB}{226,0,38}
\definecolor{orange2}{RGB}{236,117,40}
\definecolor{grey}{RGB}{50, 50, 50}

\newcounter{nblock}

% args: width, number, title, txt
\newcommand{\block}[2]{
  \addtocounter{nblock}{1}
  \begin{tikzpicture}
    \tikzstyle{txtblock}=[draw=grey,rounded corners=40pt]
    \draw node (zou) [txtblock, text width=0.93 \columnwidth, inner xsep=30pt, inner ysep=40pt, line width=5pt, text justified] {
      #2
    };
    \draw node () at (zou.north west) [line width=10pt,inner sep=15pt, xshift=30pt, anchor=west,fill=white] {
      \begin{huge}
        \textcolor{orangeinria}{\textbf{\arabic{nblock}$\centerdot$ \ #1}}
      \end{huge}
    };
  \end{tikzpicture}
  \vspace{10mm}
}

% args: width, number, title, txt
\newcommand{\blockabstract}[1]{
  \begin{tikzpicture}
    \tikzstyle{txtblock}=[draw=grey,rounded corners=40pt]
    \draw node (zou) [txtblock, text width=0.93 \columnwidth, inner xsep=30pt, inner ysep=40pt, line width=5pt, text justified] {
      #1
    };
    \draw node () at (zou.north west) [line width=10pt,inner sep=15pt, xshift=30pt, anchor=west,fill=white] {
      \begin{huge}
        \textcolor{orangeinria}{\textbf{Abstract}}
      \end{huge}
    };
  \end{tikzpicture}
  \vspace{10mm}
}

% args: title, authors, affiliation
\newcommand{\postertitle}[3]{
  \newcommand{\logoheight}{0.1 \textwidth}

  \begin{tikzpicture}
    \draw node (titlebar) [inner sep=0cm, 
                           inner ysep=10mm,
                           text width=\textwidth, fill=orangeinria] {
        \hspace{0.2 \textwidth}
        \begin{minipage}[c]{0.78 \textwidth}
            \begin{center}
                    {\color{white}
                    \fontsize{90}{110}
                    \spaceskip=3.5\fontdimen2\font plus 2\fontdimen3\font
minus 1\fontdimen4\font
                    \bfseries
                      #1
                    }
              \end{center}
            \end{minipage}
        \hspace{0.1 \textwidth}
      };

    \draw node (authors) at (titlebar.south) [anchor=north, yshift=-5mm,
                           text width=\textwidth, inner xsep=0cm] {
        \hspace{0.2 \textwidth}
        \begin{minipage}[c]{0.79 \textwidth}
            \begin{center}
                \begin{huge}
                  \color{orangeinria}
                  \textbf{#2}

                  \vspace{5mm}

                  #3
                \end{huge}
            \end{center}
        \end{minipage}
    };

    \node[xshift=0.1 \textwidth, yshift=-15mm] (logos) at (titlebar.west) {};

    \foreach \s in {0, 0.25, ..., 2.5}
    {
      \node[xshift=\s mm, yshift=-\s mm,fill=grey,opacity=0.07,rounded corners=20pt,line width=2pt, minimum width=0.15 \textwidth, minimum height=\logoheight] () at (logos) {
      };
    }

    \node[draw=grey,rounded corners=20pt,fill=white,line width=2pt, minimum width=0.15\textwidth, minimum height=\logoheight] () at (logos) {
      \includegraphics[width=0.15\textwidth, trim=0cm 0cm 0cm 0cm, clip=true]{logo.png}
    };
\end{tikzpicture}
}


%\AtBeginDocument{
%    \vfill
%        \begin{multicols}{2}
%    \begin{center}
%}

%\AtEndDocument{
%    \end{center}
%    \end{multicols}
%    \vfill
%}
