% geocraft-lesson-plan.cls
% Copyright 2015 Dave Ames <david.john.ames@gmail.com>
% 
% Licensed under the CC-GNU GPL version 2.0 or later.
% See http://creativecommons.org/licenses/GPL/2.0
% 
% Based on work here:
% See http://ankurdave.com/tex for more document classes.

\ProvidesClass{geocraft-lesson-plan}

\LoadClass[12pt]{article}

% fields that user can set (in addition to title, author, etc)
\newcommand{\mytitle}[1]{\def \@mytitle {#1}}
\newcommand{\subtitle}[1]{\def \@subtitle {#1}}
\newcommand{\agerange}[1]{\def \@agerange {#1}}
\newcommand{\duration}[1]{\def \@duration {#1}}


\usepackage[usenames, dvipsnames]{color}


\definecolor{greenish}{RGB}{90, 157, 51}
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
\usepackage[top=0cm,bottom=0cm,left=1cm,right=1cm, includeheadfoot, landscape, headheight=127pt]{geometry}
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

% figures
\usepackage[pdftex]{graphicx}


\usepackage{titling}

\usepackage{fancyhdr}


% Redefine the plain page style
\fancypagestyle{fancyplain}{%
  \fancyhf{}%
  \fancyhead[L]{\hbox to \hsize{%
                \hbox{\vtop{\vskip 0pt
                    \hbox{\hspace{-1cm}\includegraphics[width=14.5cm,height=3.9cm]{lesson-plan-logo}}}}%
                \hfill \hbox{\vtop{\vskip 20pt
                    \hbox{\parbox{0.45\textwidth}
                      {\raggedleft{\titlefont\fontsize{20}{22}\selectfont
                        {\textcolor{greenish} {Lesson Plan: 
                            \@mytitle \space \@subtitle}}} \\
                      {\titlefont\fontsize{14}{16}\selectfont
                        {\textcolor{brownish} {%Years: \space
                            %\@agerange \hspace{3cm}
                            Duration: \space \@duration}}}}}}}}}
  \fancyfoot[C]{\fontsize{10}{17}\selectfont GeoCraft: \@mytitle
    \space \@subtitle}
  \fancyfoot[R]{\fontsize{10}{17}\selectfont \thepage}
  \renewcommand{\headrulewidth}{0pt}% Line at the header invisible
  \renewcommand{\footrulewidth}{0.4pt}% Line at the footer visible
}
\pagestyle{fancyplain}




