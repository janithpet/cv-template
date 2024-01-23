\usepackage{fancyhdr}

\ProvidesClass{cv}[2024/01/23 CV class]
\NeedsTeXFormat{LaTeX2e}

\ProcessOptions\relax
\LoadClass{article}

%----------------------------------------------------------------------------------------
% Colors %
%----------------------------------------------------------------------------------------
\RequirePackage{xcolor}

\definecolor{white}{RGB}{255,255,255}
\definecolor{pink}{HTML}{F33A6A}

\colorlet{textcolor}{black}
\colorlet{headercolor}{black}
\colorlet{accent}{pink}

%----------------------------------------------------------------------------------------
% Fonts %
%----------------------------------------------------------------------------------------
\RequirePackage[quiet]{fontspec}
\RequirePackage[math-style=TeX]{unicode-math}

\newfontfamily\bodyfont{Alegreya}[]
\newfontfamily\italic{Alegreya-Italic}[]
\newfontfamily\highlightfont{Alegreya-Bold}[]
\newfontfamily\bolditalic{Alegreya-Bold-Italic}[]
\newfontfamily\headingfont{Alegreya-Bold}[]

\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Mapping=tex-text, Color=textcolor,
	BoldFont={Alegreya Medium},
	ItalicFont={Alegreya Italic},
	BoldItalicFont={Alegreya Bold Italic}]{Alegreya}

%----------------------------------------------------------------------------------------
% Hyperlinks %
%----------------------------------------------------------------------------------------
\RequirePackage{tikz}

\newcommand{\externallink}{%
	\tikz[x=1.2ex, y=1.2ex, baseline=-0.05ex]{%
		\begin{scope}[x=1ex, y=1ex]
			\clip (-0.1,-0.1)
			--++ (-0, 1.2)
			--++ (0.6, 0)
			--++ (0, -0.6)
			--++ (0.6, 0)
			--++ (0, -1);
			\path[draw,
				line width = 0.5,
				rounded corners=0.5]
			(0,0) rectangle (1,1);
		\end{scope}
		\path[draw, line width = 0.5] (0.5, 0.5)
		-- (1, 1);
		\path[draw, line width = 0.5] (0.6, 1)
		-- (1, 1) -- (1, 0.6);
	}
}

\RequirePackage[hidelinks]{hyperref}
\hypersetup{
	colorlinks=true,
	linkcolor=white,
	filecolor=magenta,
	urlcolor=black,
	pdfpagemode=FullScreen,
}

\newcommand{\link}[2]{\href{#1}{#2} \ \externallink}

%----------------------------------------------------------------------------------------
% Lists %
%----------------------------------------------------------------------------------------
\RequirePackage{enumitem}

\newlist{items}{itemize}{1}
\setlist[items, 1]
{label=\textbullet,
	partopsep=0em,
	topsep=0em,
	leftmargin=1em,
	rightmargin=10pt
}

%----------------------------------------------------------------------------------------
% Highlight %
%----------------------------------------------------------------------------------------
\newcommand{\highlight}[1]{{\highlightfont{#1}}}


%----------------------------------------------------------------------------------------
% Header %
%----------------------------------------------------------------------------------------

\newcommand{\makefield}[2]{\makebox[1.5em]{\color{black}#1} #2\hspace{1.5em}}

%----------------------------------------------------------------------------------------
% Structure %
%----------------------------------------------------------------------------------------
\RequirePackage{parskip}
\RequirePackage{titlesec}

\titlespacing{\section}
{0pt}{1em}{2em}

\renewcommand{\section}[2]{
	{
			{
					\large\headingfont\color{headercolor}%
					#1 \  #2  \par\vspace{-2.2\parskip} %
					{\textcolor{accent}{\rule{\linewidth}{1pt}}}
				}
			\par\vspace{-2.5\parskip}}
}

%----------------------------------------------------------------------------------------
% Regular entry environment %
%----------------------------------------------------------------------------------------
\RequirePackage{array}
% \RequirePackage{longtable}
\RequirePackage{etoolbox}
\setlength{\tabcolsep}{0pt}
\newenvironment{entrylist}{%
	\begin{tabular*}{\textwidth}{p{0.84\linewidth}p{0.16\linewidth}}
		% \begin{longtable}{p{0.83\linewidth}p{0.17\linewidth}}
		}{%
		% \end{longtable}
	\end{tabular*}
}
\renewcommand{\bfseries}{\headingfont}
\newcommand{\entry}[7]{%
% #1 -> location
% #2 -> start date
% #3 -> end date
% #4 -> title
% #5 -> subtitle
% #6 -> skills
% #7 -> main text
\parbox[t]{0.97\linewidth}{%
\textbf{#4} \\%
{\small\emph{#5}} \\%
\ifstrempty{#6}{
}{%
{{\bolditalic{Skills}}: {\italic{#6}}}\\
}%
\par\vspace{-1.6\parsep}{#7}\par\vspace{1.4\parsep}%
} &\ifstrempty{#3}{%
	{\normalsize\raggedleft {#2} \\ \hfill #1}
}{%
	{\normalsize\raggedleft {#2 -- #3} \\ \hfill #1}
}\\}

%----------------------------------------------------------------------------------------
% flatitems environment %
%----------------------------------------------------------------------------------------
\newenvironment{flatitems}{
	\vspace{-0.7\parsep}
}{\par\vspace{-2\parsep}}
\newcommand{\flatitem}[2]{
	% #1 -> title
	% #2 -> contents
	\highlight{#1:} \emph{#2}\\
}

%----------------------------------------------------------------------------------------
% multicolumnlist environment %
%----------------------------------------------------------------------------------------
\RequirePackage{multicol}

\newlist{multicolumnlistdef}{itemize}{1}
\setlist[multicolumnlistdef, 1]
{label={},
	partopsep=0em,
	topsep=0em,
	leftmargin=0em,
	rightmargin=10pt
}

\newenvironment{multicolumnlist}[1]{
	\vspace{-1.5\parsep}
	\begin{multicols}{#1}
		\begin{multicolumnlistdef}
			}{\end{multicolumnlistdef}\end{multicols}\par\vspace{-1\parsep}}

\newcommand{\multicolumnitem}[2]{
	% #1 -> title
	% #2 -> contents
	\item{\parbox[t]{0.5\textwidth}{\highlight{#1}\\\raggedright\emph{#2}}}
}


%----------------------------------------------------------------------------------------
% Other tweaks %
%----------------------------------------------------------------------------------------

\RequirePackage[left=1.6cm,top=0.0cm,right=1.6cm,bottom=2.5cm,nohead,nofoot]{geometry}