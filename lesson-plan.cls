% lecture-notes.cls
% Copyright 2012 Alan Lattimer <alan.lattimer at gmail.com>
% 
% Licensed under the CC-GNU GPL version 2.0 or later.
% See http://creativecommons.org/licenses/GPL/2.0
% 
% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lesson-plan}

\LoadClassWithOptions{report}

%\setlength{\textwidth}{7in}
%\setlength{\textheight}{10in}
\parindent 0pt

\RequirePackage[cm]{fullpage}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{enumerate}
\RequirePackage{setspace}
\RequirePackage{wrapfig}
\RequirePackage{graphicx}
\RequirePackage{amssymb}
\RequirePackage{pdflscape}
\RequirePackage{epstopdf}
\RequirePackage{framed}
\RequirePackage[table,dvipsnames]{xcolor}  
\RequirePackage{multicol}
\RequirePackage{titlesec}



%% \sv command is used mainly to hide the text and leave a white space
%% for a teacher and students to fill in class
\newcommand{\svul}[1]{\underline{\phantom{\Large{#1}}}}
\newcommand{\sv}[1]{{\textcolor{White}\Large{#1}}}

\DeclareOption{student}{
	\renewcommand{\svul}[1]{\underline{\phantom{\Large{#1}}}}
	\renewcommand{\sv}[1]{\textcolor{white}{\Large{#1}}}
}
\DeclareOption{instructor}{
	\renewcommand{\svul}[1]{\textcolor{Red}{{#1}}}
	\renewcommand{\sv}[1]{\textcolor{Red}{{#1}}}
}
\DeclareOption{instr}{
	\renewcommand{\svul}[1]{\textcolor{Red}{{#1}}}
	\renewcommand{\sv}[1]{\textcolor{Red}{{#1}}}
}
\ProcessOptions\relax
%%

\titleformat{\section}{\normalfont\Large\sf\bfseries}{\thesection}{1em}{}
\titleformat{\subsection}{\normalfont\Large\sf\bfseries}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\normalfont\large\sf\bfseries}{\thesubsubsection}{1em}{}

% Set the enumerate numbering
\renewcommand{\labelenumi}{\Roman{enumi}. }
\renewcommand{\labelenumii}{\Alph{enumii}. }
\renewcommand{\labelenumiii}{\roman{enumiii}. }
\renewcommand{\labelenumiv}{\alph{enumiv}. }


\newcommand{\ds}{\displaystyle}
\newcommand{\pimg}[1]{\begin{center}\includegraphics[scale=0.7]{#1}\end{center}}
\newcommand{\pimgl}[1]{\includegraphics[scale=1]{#1}}
\newcommand{\lessonhdr}{{\LARGE\textsf{\textbf{\coursenum\; - LESSON \lessonnum}}}\hfill{\Large\textsf{\lessondate}}}

\theoremstyle{plain}
\newtheorem{mythm}{\sf \color{NavyBlue} THEOREM}
\newtheorem{mycor}{\sf \color{NavyBlue} COROLLARY}

\theoremstyle{definition}
\newtheorem{example}{\sf EXAMPLE}[section]
\newtheorem*{mydefn}{\sf \color{Violet} \textbf{DEFINITION}}
\newtheorem*{soln}{\normalsize \sf  Solution} 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% The following environments are set up to minimize 
%% the work necessary to transfer definitions, etc to 
%% my beamer slides.

%------- objectives ----------------------------------------
\newenvironment{objectives}
{	\begin{framed}
		\vspace{-5mm}
		\section{\lessontitle}
		{\color{Violet}\textsf{\textbf{OBJECTIVES:}}}
		\begin{enumerate}[1.]}
{		\end{enumerate}
		{\color{NavyBlue} \textbf{\textsf{THE HOOK:}}}
		\begin{description}
			\item \lessonhook
		\end{description}
	\end{framed}
}
%------- end objectives ------------------------------------

\newenvironment{notes}
{ 
	{\color{ForestGreen}\Large\textsf{\textbf{LESSON NOTES:}}}
	\begin{enumerate}
}
{
	\end{enumerate}
}

%------- bbox ----------------------------------------
\newenvironment{bbox}[1]
{\begin{framed}
	\vspace{-5mm}
	\subsubsection*{\sf \color{ForestGreen}\textbf{#1}}}
{\end{framed}}
%------- end bbox ------------------------------------

%------- defnbox -------------------------------------
\newenvironment{defnbox}
{\begin{framed}
	\begin{mydefn}}
{\end{mydefn}
\end{framed}}
%------- end defnbox ---------------------------------

%------- thmbox -------------------------------------
\newenvironment{thmbox}
{\begin{framed}
	\begin{mythm}}
{\end{mythm}
\end{framed}}
%------- end thmbox ---------------------------------

%------- corbox -------------------------------------
\newenvironment{corbox}
{\begin{framed}
	\begin{mycor}}
{\end{mycor}
\end{framed}}
%------- end corbox ---------------------------------

%------- exbox -------------------------------------
\newenvironment{exbox}
{\begin{example}}
{\end{example}}
%------- end exbox ---------------------------------

%------- todo ----------------------------------------
\newenvironment{todo}
{\subsubsection*{\underline{TO DO}}
	Work on the following problems in groups of 2 or 3.
	\begin{enumerate}[\bf1)]}
{	\end{enumerate}}
%------- end todo ------------------------------------


