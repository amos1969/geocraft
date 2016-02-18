% geocraft-worksheet.cls
% Copyright 2015 Dave Ames <david.john.ames@gmail.com>
% 
% Licensed under the CC-GNU GPL version 2.0 or later.
% See http://creativecommons.org/licenses/GPL/2.0
% 
% Based on work here:
% See http://ankurdave.com/tex for more document classes.

\LoadClass[12pt]{article}
\ProvidesClass{geocraft-worksheet}


% fields that user can set (in addition to title, author, etc)
\makeatletter
	\newcommand{\subtitle}[1]{\def \@subtitle {#1}}
	\subtitle{}
\makeatother

\usepackage[usenames, dvipsnames]{color}


\definecolor{greenish}{RGB}{0, 175, 80}
\definecolor{brownish}{RGB}{163, 111, 65}
\definecolor{Code}{rgb}{0,0,0}
\definecolor{Decorators}{rgb}{0.2,0.2,0.2}
\definecolor{Numbers}{rgb}{0.5,0,0}
\definecolor{MatchingBrackets}{rgb}{0.25,0.5,0.5}
\definecolor{Keywords}{rgb}{0,0,1}
\definecolor{self}{rgb}{1,0,0}
\definecolor{Strings}{rgb}{0,0.63,0}
\definecolor{Comments}{rgb}{0,0.63,1}
\definecolor{Backquotes}{rgb}{0,0.2,0}
\definecolor{Classname}{rgb}{0,0,1}
\definecolor{FunctionName}{rgb}{1,0,1}
\definecolor{Operators}{rgb}{0,0,0}
\definecolor{Background}{rgb}{0.95,0.95,0.95}

% margins
\usepackage[top=0cm, bottom=1cm,left=1cm,right=1cm]{geometry}
\setlength{\voffset}{0cm}
\setlength{\headsep}{12pt}


\usepackage{helvet}
\renewcommand{\familydefault}{\sfdefault}

\usepackage{sectsty}
\sectionfont{\color{brownish}\bfseries\fontsize{14}{17}\selectfont}


% fonts
\newenvironment{titlefont}{\fontfamily{pag}\bfseries\selectfont}{\par}

% alignment
% (must be before indentation because raggedright clears parindent)
\raggedright

\def\changemargin#1#2{\list{}{\rightmargin#2\leftmargin#1}\item[]}
\let\endchangemargin=\endlist

% spacing
\usepackage{setspace}

% references
\usepackage{varioref}

% figures
\usepackage[pdftex]{graphicx}


\usepackage{listings}
\usepackage{titling}

\usepackage{fancyhdr}

\usepackage{tikz}
\usetikzlibrary{calc}
\usetikzlibrary{decorations.pathreplacing} 


\newcommand{\tikzmark}[1]{\tikz[overlay,remember picture] \node (#1) {};}

\newcommand*{\AddBackgroundImage}[4][]{%
%\pgfmathsetmacrp{\height}{}%
    \begin{tikzpicture}[overlay,remember picture]
    \coordinate (VCenter) at ($(#2)!0.5!(#3)$);
    \coordinate (Fudge) at (-\pgflinewidth,0);
    \coordinate (VFudge) at (0,\baselineskip);
    %\draw [red, thick,fill=yellow, fill opacity=0.2]% for debugging
    \clip
            ($(#2)+ (Fudge) - 0.50*(VFudge)$) -- 
            ($(#2) + (\linewidth,0) - 0.50*(VFudge)$) -- 
            ($(#3) + (\linewidth,0) + 1.25*(VFudge)$) --
            ($(#3)+ (Fudge) + 1.25*(VFudge)$) -- cycle;
    \path (VCenter) -- ++($(0.5*\linewidth,0)$) 
    node [opacity=0.3, #1] {\includegraphics[width=\linewidth]{#4}};
    \end{tikzpicture}%
}%

% Redefine the plain page style
\fancypagestyle{plain}{%
  \fancyhf{}%
  \fancyfoot[C]{http://www.geocraft.org.uk/ \hspace{0.5cm} @GeoCraftUK}%
  \renewcommand{\headrulewidth}{0pt}% Line at the header invisible
  \renewcommand{\footrulewidth}{0.4pt}% Line at the footer visible
}
\pagestyle{plain}

% title
\makeatletter
\def \@maketitle {%
  \begin{changemargin}{-1cm}{-1cm}
  \begin{minipage}[t]{.5\textwidth}
    \vspace{0pt}\includegraphics[width=10.5cm,height=2.9cm]{worksheet-logo}
  \end{minipage}%
  \hspace{0.05\textwidth}
  \begin{minipage}[t]{.44\textwidth}
    \vspace{0.8cm}
  \begin{titlefont}
	\begin{flushleft}
          \fontsize{26}{28}\selectfont
          {\textcolor{greenish} {\@title}} \\
          
          \fontsize{16}{19}\selectfont
		\ifx \@subtitle \@empty \relax \else
			{\textcolor{brownish} {\@subtitle}} \\
		\fi
	\end{flushleft}
   \end{titlefont}
\end{minipage}
\end{changemargin}
}
\makeatother


\lstset{
numbers=left,
numberstyle=\footnotesize,
numbersep=1em,
xleftmargin=1em,
framextopmargin=2em,
framexbottommargin=2em,
showspaces=false,
showtabs=false,
showstringspaces=false,
frame=l,
tabsize=4,
breaklines=true,
postbreak=\raisebox{0ex}[0ex][0ex]{\ensuremath{\color{red}\hookrightarrow\space}},
% Basic
basicstyle=\ttfamily\small\setstretch{1},
language=Python,
% Comments
commentstyle=\color{Comments},
% Strings
stringstyle=\color{Strings},
morecomment=[s][\color{Strings}]{"""}{"""},
morecomment=[s][\color{Strings}]{'''}{'''},
% keywords
morekeywords={import,from,class,def,for,while,if,is,in,elif,else,not,and,or,print,break,continue,return,True,False,None,access,as,,del,except,exec,finally,global,import,lambda,pass,print,raise,try,assert},
keywordstyle={\color{Keywords}\bfseries},
% additional keywords
morekeywords={[2]@invariant},
keywordstyle={[2]\color{Decorators}\slshape},
emph={self},
emphstyle={\color{self}\slshape},
%
}{}

