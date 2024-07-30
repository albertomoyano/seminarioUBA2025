\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{SelfArx}[22/10/2020, v2.2]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax%

\LoadClass{article}

\RequirePackage{ifthen}
\RequirePackage{calc}
\RequirePackage{amsmath, amsfonts, amssymb}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{booktabs}
\RequirePackage{lastpage}
\RequirePackage{pbalance}

\AtEndOfClass{\RequirePackage{microtype}}

\tracinglostchars=2%
\usepackage{fontspec}
\newfontfeature{Microtypography}{protrusion=default;expansion=default}
\directlua{fonts.protrusions.setups.default.factor=.5}
\renewcommand{\normalsize}{\fontsize{10.5pt}{14.5pt}\selectfont}
\topskip=14.5pt

\setmainfont{Libertinus Serif}
[Numbers={OldStyle,Proportional},Ligatures=TeX,Scale=1.2]

\setsansfont[Ligatures=TeX,
Extension=.otf,
UprightFont=*-Regular,
ItalicFont=*-Italic,
BoldFont=*-SemiBold,
BoldItalicFont=*-SemiBoldItalic]{IBMPlexSansCondensed}

\setmonofont[Extension=.otf,
UprightFont=*-Regular,
ItalicFont = IBMPlexMono-Italic.otf,
BoldFont = IBMPlexMono-Bold.otf,
BoldItalicFont = IBMPlexMono-BoldItalic.otf]{IBMPlexMono.otf}

\RequirePackage[
	left=2cm,
	right=2cm,
	top=2.25cm,
	bottom=2.25cm,
	headheight=11pt,
	a4paper,
	footskip=0mm,
	footnotesep=13.5pt plus 0.1pt minus 0.1pt
]{geometry}

\RequirePackage[
	labelfont={bf,sf,small},
	labelsep=period,
	justification=raggedright,
]{caption}

\setlength{\abovecaptionskip}{3pt}
\setlength{\belowcaptionskip}{0pt}

\RequirePackage{fancyhdr}
\pagestyle{fancy}

\renewcommand{\headrulewidth}{0pt} % No header rule
\renewcommand{\footrulewidth}{0pt} % No footer rule

% Headers
\lhead{}
\chead{}
\rhead{\small\sffamily\bfseries\@PaperTitle\ --- \thepage/\pageref{LastPage}}

% Footers
\lfoot{}
\cfoot{}
\rfoot{}

\raggedbottom
\clubpenalty=10000
\widowpenalty=10000

\RequirePackage[explicit]{titlesec}

\titleformat{\section}
	{\color{color2}\sffamily\bfseries}
	{}
	{0em}
	{\colorbox{color1!0}{\parbox{\dimexpr\linewidth-2\fboxsep\relax}{\centering\thesection.\space#1}}}
	[]

\titleformat{name=\section,numberless}
	{\color{color1!0}\sffamily\bfseries}
	{}
	{0em}
	{\colorbox{color2}{\parbox{\dimexpr\linewidth-2\fboxsep\relax}{\centering#1}}}
	[]

\titleformat{\subsection}
	{\color{color1}\sffamily\bfseries}
	{\thesubsection}
	{0.5em}
	{#1}
	[]

\titleformat{\subsubsection}
	{\sffamily\bfseries}
	{\thesubsubsection}
	{0.5em}
	{#1}
	[]

\titleformat{\paragraph}[runin]
	{\sffamily\normalsize\bfseries}
	{}
	{0em}
	{#1}

\titlespacing*{\section}{0pc}{3ex \@plus4pt \@minus3pt}{6pt}
\titlespacing*{\subsection}{0pc}{2.5ex \@plus3pt \@minus2pt}{6pt}
\titlespacing*{\subsubsection}{0pc}{2ex \@plus2.5pt \@minus1.5pt}{3pt}
\titlespacing*{\paragraph}{0pc}{1.5ex \@plus2pt \@minus1pt}{10pt}

\newlength{\tocsep}
\setlength\tocsep{1.5pc} % Sets the indentation of the sections in the table of contents
\setcounter{tocdepth}{3} % Three levels in the table of contents section: sections, subsections and subsubsections

\usepackage{titletoc}
\contentsmargin{0cm}

\titlecontents{section}[\tocsep]
	{\addvspace{4pt}\small\bfseries\sffamily}
	{\contentslabel[\thecontentslabel]{\tocsep}}
	{}
	{\hfill\thecontentspage}
	[]

\titlecontents{subsection}[\tocsep]
	{\addvspace{2pt}\sffamily}
	{\contentslabel[\thecontentslabel]{\tocsep}}
	{}
	{\ \titlerule*[.5pc]{.}\ \thecontentspage}
	[]

\titlecontents*{subsubsection}[\tocsep]
	{\footnotesize\sffamily}
	{}
	{}
	{}
	[\ \textbullet\ ]

\newcount\@authcnt
\newcount\@tmpcnt\@tmpcnt\z@

\def\@affiliation{%
	\ifnum\@tmpcnt<\@authcnt
		 \global\advance\@tmpcnt1
		\raggedright \csname @auth\romannumeral\the\@tmpcnt\endcsname\hfill\\%
		 \let\next\@affiliation \vskip1pt
	\else
		\let\next\relax
	\fi
	\next%
}

\newcommand{\affiliation}[1]{%
	\global\advance\@authcnt1
	\expandafter\gdef\csname @auth\romannumeral\the\@authcnt\endcsname
	{#1}
}

\RequirePackage{enumitem}
%\setlist{nolistsep} % Uncomment to remove spacing before lists (enumerate, itemize)

\newcommand{\PaperTitle}[1]{\def\@PaperTitle{#1}}
\newcommand{\PaperSubtitle}[1]{\def\@PaperSubtitle{#1}}
\newcommand{\PaperTitleTwo}[1]{\def\@PaperTitleTwo{#1}}
\newcommand{\Archive}[1]{\def\@Archive{#1}}
\newcommand{\ArchiveTwo}[1]{\def\@ArchiveTwo{#1}}
\newcommand{\Authors}[1]{\def\@Authors{#1}}
\newcommand{\JournalInfo}[1]{\def\@JournalInfo{#1}}
\newcommand{\Abstract}[1]{\def\@Abstract{#1}}
\newcommand{\Keywords}[1]{\def\@Keywords{#1}}
\newcommand{\Resumen}[1]{\def\@Resumen{#1}}
\newcommand{\PalabrasClave}[1]{\def\@PalabrasClave{#1}}

\renewcommand{\@maketitle}{%
	\twocolumn[{%
		\thispagestyle{empty}%
		\vskip-36pt%
		{\raggedleft\small\sffamily\@JournalInfo\\\@Archive\\\@ArchiveTwo\par}%
		\vskip20pt%
		{\raggedright\color{color1}\fontsize{20}{24}\selectfont \@PaperTitle\par}%
		{\raggedright\color{color1}\fontsize{14}{18}\selectfont \@PaperSubtitle\par}%
		{\raggedright\color{color1}\bfseries\fontsize{16}{20}\selectfont \@PaperTitleTwo\par}%
		\vskip10pt%
		{\raggedright\color{color1} \@Authors\par}%
		\vskip18pt%
		\fcolorbox{color1}{white}{%
			\parbox{\textwidth-2\fboxsep-2\fboxrule}{\centering%
				\colorbox{color2!5}{%
					\parbox{\textwidth-4\fboxsep-2\fboxrule}{%
						\ifx\@Keywords\@empty%
							\sffamily\textbf{\abstractname}\\\@Abstract%
						\else%
						\sffamily\textbf{\abstractname}\\\@Resumen\\[4pt]%
							\textbf{Palabras clave}\\\@PalabrasClave\\[4pt]%
							\sffamily\textbf{Abstract}\\\@Abstract\\[4pt]%
							\textbf{\keywordname}\\\@Keywords%
						\fi%
					}%
				}%
%				\vskip4pt%
%				\begingroup%
%					\raggedright\sffamily\small%
%					\footnotesize\@affiliation\par%
%				\endgroup%%
			}%
		}%
		\vskip25pt%
	}]%
}

\defcounter{biburlnumpenalty}{3000}
\defcounter{biburlucpenalty}{6000}
\defcounter{biburllcpenalty}{9000}

\RequirePackage{url}
\Urlmuskip = 0mu plus 1mu
\def\UrlBreaks{\do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j\do\k\do\l\do\m\do\n\do\o\do\p\do\q\do\r\do\s\do\t\do\u\do\v\do\w\do\x\do\y\do\z\do\A\do\B\do\C\do\D\do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L\do\M\do\N\do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X\do\Y\do\Z\do0\do1\do2\do3\do4\do5\do6\do7\do8\do9\do=\do.\do:\do\%\do?\do_\do-\do+\do/\do\#\do~}
\def\UrlFont{\rm}

% definir la palabra para el segundo idioma, por default es inglés
\newcommand{\keywordname}{Keywords}
