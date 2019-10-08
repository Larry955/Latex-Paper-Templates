\LoadClass{IEEEtran}

\RequirePackage{ifpdf}
\RequirePackage{xkeyval}

\ifpdf
 \pdfmapfile{+ t1-times.map}
 \pdfmapfile{+ t1-formata.map}
 \pdfmapfile{+ t1-giovannistd.map}
\fi

\newif\iflineno\linenofalse
\newif\ifjtehm\jtehmfalse
\newif\ifaccesseditors\accesseditorsfalse
\newif\ifaccesseditorial\accesseditorialfalse
\newif\ifjtehmeditorial\jtehmeditorialfalse


\newif\ifeoddefined\eoddefinedfalse

\DeclareOption{a4paper}{\setlength{\paperheight}{276.2mm}%
                        \setlength{\paperwidth}{203.2mm}%
                        \@IEEEusingAfourpapertrue}


\DeclareOption{accesseditors}{\accesseditorstrue}

\DeclareOption{editorial}{\accesseditorialtrue\accesseditorstrue\jtehmeditorialtrue}

\DeclareOption{lineno}{\linenotrue}

\DeclareOption{nolineno}{\linenofalse}

\DeclareOption{twoside}{\global\@twosidetrue \@mparswitchtrue}

\DeclareOption{jtehm}{\global\jtehmtrue}

%%%%
\newdimen\@draftversionrule\@draftversionrule0pt %%%%% updated
\DeclareOption{draftversion}{\setlength\overfullrule{5pt}\@draftversiontrue\@draftversionrule.1pt\overfullrule 5pt} %%%%% updated
%%%%

% default to US a4paper, 10pt, twocolumn, twosided, final, journal
\ExecuteOptions{a4paper,10pt,twocolumn,twoside,lineno,journal}
% overrride these defaults per user requests
\ProcessOptions

\ifaccesseditorial
\ifjtehmeditorial\else
  \RequirePackage{ltxutil,ltxgrid}
\fi
\fi

\def\putfont#1#2#3#4#5#6{\usefont{#1}{#2}{#3}{#4}\fontsize{#5}{#6}\selectfont}

\def\textit#1{{\it #1}}%
\def\textbf#1{{\bf #1}}%
\def\historyfont{\sffamily\fontencoding{T1}\fontseries{n}\fontshape{n}\fontsize{7}{8.4}\selectfont}%formata reg 7pt
\def\doifont{\rmfamily\fontencoding{T1}\fontseries{n}\fontsize{6}{7.2}\selectfont\it}%giovannistd-bookitalic 6pt
\def\titlefont{\sffamily\fontencoding{T1}\fontseries{b}\fontsize{22}{25.4}\selectfont}%formata condmed 22pt
\def\authorfont{\sffamily\fontencoding{T1}\fontseries{b}\fontsize{9.9}{12}\selectfont}%formata medium 9.9pt
\def\membershipfont{\sffamily\fontencoding{T1}\fontseries{b}\fontsize{9.9}{12}\selectfont}%formata medium italic 9.9pt
\def\addressfont{\rmfamily\fontencoding{T1}\fontseries{n}\fontsize{6.6}{8}\selectfont}%times roman 6.6pt
\def\correspfont{\rmfamily\fontencoding{T1}\fontseries{n}\fontsize{7.7}{9.24}\selectfont}%times roman 7.7pt
\def\tfootnotefont{\rmfamily\fontencoding{T1}\fontseries{n}\fontsize{7.7}{9.24}\selectfont}%times roman 7.7pt
\def\abstractfont{\rmfamily\fontencoding{T1}\fontseries{n}\fontsize{10}{12}\selectfont}%times roman 10pt
\def\indexfont{\rmfamily\fontencoding{T1}\fontseries{n}\fontsize{10}{12}\selectfont}%times roman 10pt
\def\bodyfont{\rmfamily\fontencoding{T1}\fontseries{n}\fontsize{10}{12}\selectfont}%times roman 10pt
\def\abstractheadfont{\sffamily\fontencoding{T1}\fontseries{b}\fontsize{10}{12}\selectfont}%formata bold 9pt
\def\indexheadfont{\sffamily\fontencoding{T1}\fontseries{b}\fontsize{10}{12}\selectfont}%formata bold 9pt
\def\sectionAfont{\sffamily\fontencoding{T1}\fontseries{b}\fontsize{9}{12}\selectfont}%formata bold 9pt
\def\sectionBfont{\sffamily\fontencoding{T1}\fontseries{b}\fontshape{sl}\fontsize{9}{12}\selectfont}%formata mediumitalic 9pt
\def\sectionCfont{\sffamily\fontencoding{T1}\fontseries{n}\fontsize{9}{12}\selectfont}%formata regular 9pt
\def\sectionDfont{\sffamily\fontencoding{T1}\fontseries{n}\fontshape{sl}\fontsize{9}{12}\selectfont}%formata italic 9pt
\def\figcapheadfont{\sffamily\fontencoding{T1}\fontseries{b}\fontsize{7}{8.4}\selectfont}%formata bold 7pt
\def\figcapfont{\def\textit##1{{\sffamily\selectfont\itshape##1}}\sffamily\fontencoding{T1}\fontseries{m}\fontsize{7}{8.4}\selectfont      }%formata medium 7pt
\def\tablecapheadfont{\sffamily\fontencoding{T1}\fontseries{b}\fontsize{7}{8.4}\selectfont}%formata bold 7pt
\def\tableheadfont{\sffamily\fontencoding{T1}\fontseries{m}\fontsize{7}{8.4}\selectfont}%formata medium 7pt
\def\tablecapfont{\def\textit##1{{\sffamily\selectfont\itshape##1}}\sffamily\fontencoding{T1}\fontseries{m}\fontsize{7}{8.4}\selectfont}%formata medium 7pt
\def\tablebodyfont{\def\textit##1{{\sffamily\selectfont\itshape##1}}\sffamily\fontencoding{T1}\fontseries{n}\fontsize{7}{8.4}\selectfont}%formata regular 7 pt
\def\tablefootfont{\sffamily\fontencoding{T1}\fontseries{b}\fontsize{7}{8.4}\selectfont}%formata regular 7 pt
\def\footervolfont{\sffamily\fontencoding{T1}\fontseries{n}\fontsize{6}{7}\selectfont}%formata regular 6pt
\def\footerpagefont{\sffamily\fontencoding{T1}\fontseries{n}\fontsize{7}{7}\selectfont}%formata regular 7pt
\def\headerfont{\sffamily\fontencoding{T1}\fontseries{n}\fontsize{7}{7}\selectfont}%formata regular 7pt
\def\nheaderfont{\sffamily\fontencoding{T1}\fontseries{b}\fontsize{9}{9}\selectfont}%formata regular 7pt
\def\iheaderfont{\sffamily\fontencoding{T1}\fontseries{m}\fontshape{sl}\fontsize{7}{7}\selectfont}%formata mediumitalic 9pt
\def\referencefont{\rmfamily\fontencoding{T1}\fontseries{n}\fontsize{7.61}{9}\selectfont}%times roman 7.61pt
\def\biographyheadfont{\sffamily\fontencoding{T1}\fontseries{m}\fontsize{8}{9.6}\selectfont}%times roman 8pt
\def\biographyfont{\rmfamily\fontencoding{T1}\fontseries{n}\fontsize{8}{9.6}\selectfont}%times roman 8pt

\ifjtehm
\def\correspfont{\sffamily\fontencoding{T1}\fontseries{n}\fontsize{7}{8}\selectfont}%times roman 7.7pt
\def\tfootnotefont{\sffamily\fontencoding{T1}\fontseries{n}\fontsize{7}{8}\selectfont}%times roman 7.7pt
\def\abstractheadfont{\sffamily\fontencoding{T1}\fontseries{b}\fontsize{9}{12}\selectfont}%formata bold 9pt
\def\indexheadfont{\sffamily\fontencoding{T1}\fontseries{b}\fontsize{9}{12}\selectfont}%formata bold 9pt
\def\titlepageheaderfont{\sffamily\fontencoding{T1}\fontseries{b}\fontsize{9}{12}\selectfont}%formata bold 9pt
\fi

\AtBeginDocument{%
%
%
% enable Times now - so that all class options can see the correct font families
\fontencoding{T1}\selectfont%
\bodyfont\selectfont%
%\advance\baselineskip by 1pt plus 1pt minus 1pt%
}

\columnsep 6.95mm
\columnwidth 85.29mm
\textwidth 177.53mm
%\textheight 236.23mm
\textheight 672pt
\oddsidemargin=12.76mm
\advance\oddsidemargin by -1in
\evensidemargin=12.76mm
\advance\evensidemargin by -1in
\headsep 0.25in
\advance\headsep by 2.8mm

%Defining Pantone SpotColor for blue
\RequirePackage{color}
\ifjtehm
  \definecolor{accessblue}{cmyk}{.24,1,1,0}
  \definecolor{greycolor}{cmyk}{0,0,0,1}
\else
  \RequirePackage{spotcolor}
  \NewSpotColorSpace{PANTONE}
  \AddSpotColor{PANTONE} {PANTONE3015C} {PANTONE\SpotSpace 3015\SpotSpace C} {1 0.3 0 0.2}
  \SetPageColorSpace{PANTONE}%
  \definecolor{accessblue}{spotcolor}{PANTONE3015C,1.0}%
  \definecolor{greycolor}{cmyk}{0,0,0,.8}
\fi
\definecolor{grey}{cmyk}{0,0,0,.1}
\definecolor{black}{cmyk}{0,0,0,1}


%%%
% Page dimensions
%sections
%\def\@seccntformat#1{\csname the#1dis\endcsname\hskip 0.5em\relax}
\def\restoreSection{%
\def\theparagraphdis{\alph{paragraph}:}            % d)
\def\section{\@startsection{section}{1}{1pt}{-1pc plus -1pt minus -1pt}%
              {0.001pt}{\raggedright\color{accessblue}\sectionAfont\uppercase}}%
\def\subsection{\@startsection{subsection}{2}{1pt}{-1pc plus -1pt minus -1pt}%
              {1pt}{\raggedright\color{greycolor}\sectionBfont\uppercase}}%
\def\subsubsection{\@startsection{subsubsection}{3}{1pt}{-1pc plus -1pt minus -1pt}%
              {1pt}{\raggedright\color{greycolor}\sectionCfont\hspace*{-1pt}}}%
\def\paragraph{\@startsection{paragraph}{4}{1pt}{-1pc plus -1pt minus -1pt}%
              {1pt}{\raggedright\color{greycolor}\sectionDfont}}%
}
\restoreSection%
\def\@IEEEprocessthesectionargument#1{%
\@ifmtarg{#1}{%
%\@IEEEappendixsavesection*{{\color{accessblue}\sectionAfont APPENDIX \thesectiondis}}%
\section*{{\color{accessblue}\sectionAfont APPENDIX \thesectiondis}}%
\addcontentsline{toc}{section}{Appendix \thesection}}{%
%\@IEEEappendixsavesection*{{\color{accessblue}\sectionAfont APPENDIX \thesectiondis \\* #1}}%
\section*{{\color{accessblue}\sectionAfont APPENDIX \thesectiondis \\* #1}}%
\addcontentsline{toc}{section}{Appendix \thesection: #1}}}

\renewcommand{\appendix}[1][]{\par%
    % v1.6 keep hyperref's identifiers unique
    \def\theHsection{Appendix.A}%
    % v1.6 adjust hyperref's string name for the section
    \xdef\Hy@chapapp{appendix}%
    \setcounter{section}{0}%
    \setcounter{subsection}{0}%
    \setcounter{subsubsection}{0}%
    \setcounter{paragraph}{0}%
    \def\thesection{}%
    \def\thesectiondis{APPENDIX.}% 
    \def\thesubsection{\Alph{subsection}}%
    \refstepcounter{section}% update the \ref counter
%    \@ifmtarg{#1}{\@IEEEappendixsavesection*{{\color{accessblue}\sectionAfont APPENDIX}}%
%                  \addcontentsline{toc}{section}{Appendix}}{%
%             \@IEEEappendixsavesection*{{\color{accessblue}\sectionAfont APPENDIX \\* #1}}%
%             \addcontentsline{toc}{section}{Appendix: #1}}%
    % redefine \section command for appendix
    % leave \section* as is
%    \def\section{\@ifstar{\@IEEEappendixsavesection*}{%
%                    \@IEEEdestroythesectionargument}}% throw out the argument
                                                     % of the normal form
}

\def\appendices{\par%
    % v1.6 keep hyperref's identifiers unique
    \def\theHsection{Appendix.\Alph{section}}%
    % v1.6 adjust hyperref's string name for the section
    \xdef\Hy@chapapp{appendix}%
    \setcounter{section}{-1}% we want \refstepcounter to use section 0
    \setcounter{subsection}{0}%
    \setcounter{subsubsection}{0}%
    \setcounter{paragraph}{0}%
    \def\thesection{\Alph{section}}%
    \def\thesectiondis{APPENDIX \Alph{section}}.%
    \refstepcounter{section}% update the \ref counter
    \setcounter{section}{0}% NEXT \section will be the FIRST appendix
    % redefine \section command for appendices
    % leave \section* as is
%    \def\section{\@ifstar{\@IEEEappendixsavesection*}{% process the *-form
%                    \refstepcounter{section}% or is a new section so,
%                    \@IEEEprocessthesectionargument}}% process the argument 
                                                 % of the normal form
}


%%%
%Captions
\def\@IEEEtablestring{table}

\long\def\@makecaption#1#2{%
% test if is a for a figure or table
\ifx\@captype\@IEEEtablestring%
% if a table, do table caption
\begin{flushleft}
\vspace*{5pt}
{\vss\color{accessblue}\tablecapheadfont #1. \ }{\raggedright\tablecapfont#2\vss}%
\end{flushleft}
\@IEEEtablecaptionsepspace% V1.6 was a hard coded 8pt
% if not a table, format it as a figure
\else
\@IEEEfigurecaptionsepspace% V1.6 was a hard coded 5pt
% 3/2001 use footnotesize, not small; use two nonbreaking spaces, not one
\setbox\@tempboxa\hbox{\strut{\color{accessblue}\figcapheadfont #1. \ }\raggedright\figcapfont#2\strut}%
%\ifdim \wd\@tempboxa >\columnwidth%
\ifdim \xfigwd >\columnwidth%
% if caption is longer than a line, let it wrap around
\setbox\@tempboxa\hbox{{\color{accessblue}\figcapheadfont #1. \ }}%
\mbox{}\hfill\begin{tabular}{@{}l@{}}\noindent\raggedright\unhbox\@tempboxa\figcapfont#2\end{tabular}\hfill\mbox{}%
% if caption is shorter than a line,
% allow user to control short figure caption justification (left or center)
\else%
%\ifcenterfigcaptions \hbox to\hsize{\footnotesize\hfil\box\@tempboxa\hfil}%
%\else 
\setbox\@tempboxa\hbox{{\color{accessblue}\figcapheadfont #1. \ }}%
%\parbox[t]{\columnwidth}
{\vss\raggedright\noindent\unhbox\@tempboxa\figcapfont#2\vss}%
%\hbox to\hsize{\box\@tempboxa\hfil}%
%\fi
\fi\fi\vskip 1pt plus 1pt minus 1pt}

%tables
\ifjtehm
  \def\thetable{\@Roman\c@table}
\else
  \def\thetable{\@arabic\c@table}
\fi
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\tablename{TABLE}
\def\fnum@table{\tablename~\thetable}

%%%
%figures
\def\thefigure{\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\figurename{FIGURE}
\def\fnum@figure{\figurename~\thefigure}

\define@key{figkeys}{topskip}{\def\fig@topskip{#1}} % skip above image
\define@key{figkeys}{midskip}{\def\fig@midskip{#1}} % skip between image and caption
\define@key{figkeys}{botskip}{\def\fig@botskip{#1}} % skip below caption
\setkeys{figkeys}{topskip=0pt,midskip=0pt,botskip=0pt}%

\newsavebox\figbox
\def\Figure{\@ifnextchar[{\@Figure}{\@Figure[t!]}}
\def\@Figure[#1]{\@ifnextchar({\@@Figure[#1]}{\@@Figure[#1](topskip=0pt)}}
\def\@@Figure[#1](#2){\@ifnextchar[{\@@@Figure[#1](#2)}{\@@@Figure[#1](#2)[scale=1]}}
%%%%%%%%%%%%
\def\@@@Figure[#1](#2)[#3]#4#5{%
      \setkeys{figkeys}{#2}% Set new keys
      \setbox\figbox\hbox{\includegraphics[#3]{#4}}%
      \xdef\xfigwd{\the\wd\figbox}%
      \ifdim\wd\figbox<\columnwidth% Columnwidth Figure
        \begin{figure}[#1]%
          \centering%
          \vspace*{5pt}%
          \vspace*{\fig@topskip}%
%          \centerline{\epsfframe{\begin{tabular}{@{}c@{}}
%          \epsfxsize=\epsfxsize \hphantom{\epsfbox{#4}} \\ %%% NEW
%          \epsfysize=\epsfysize \vphantom{\epsfbox{#4}} \end{tabular}}}
          \includegraphics[#3]{#4}%
          \vspace*{\fig@midskip}%
          \caption{#5}%
          \vspace*{\fig@botskip}%
        \end{figure}
      \else% Wide Figure
        \begin{figure*}[#1]%
          \centering%
          \vspace*{5pt}%
          \vspace*{\fig@topskip}%
%          \centerline{\epsfframe{\begin{tabular}{@{}c@{}}
%          \epsfxsize=\epsfxsize \hphantom{\epsfbox{#4}} \\ %%% NEW
%          \epsfysize=\epsfysize \vphantom{\epsfbox{#4}} \end{tabular}}}
          \includegraphics[#3]{#4}%
          \vspace*{\fig@midskip}%
          \caption{#5}%
          \vspace*{\fig@botskip}%
        \end{figure*}
      \fi%
}
%%%%%%%%%%%%

\define@key{tabkeys}{topskip}{\def\tab@topskip{#1}} % skip above table
\define@key{tabkeys}{botskip}{\def\tab@botskip{#1}} % skip below table
\define@key{tabkeys}{width}{\def\tab@width{#1}} % width of the table
\define@key{tabkeys}{resize}{\def\tab@resize{#1}} % toresize the table using \resizebox
\define@key{tabkeys}{arraystretch}{\def\tab@arraystretch{#1}} % toresize the table using \resizebox
\setkeys{tabkeys}{topskip=0pt,botskip=0pt,width=\columnwidth,resize=!,arraystretch=1.3}%

% #1 -> table position t, b, p, h, !
% #2 -> keyvalues: topskip, botskip, width, resize, arraystretch etc
% #3 -> caption and label
% #4 -> table body
%\newsavebox\tabbox
\def\tab@excl{!}
\def\Table{\@ifnextchar[{\@Table}{\@Table[t!]}}
\def\@Table[#1]{\@ifnextchar({\@@Table[#1]}{\@@Table[#1](topskip=0pt)}}
\def\@@Table[#1](#2)#3#4{%
      \setkeys{tabkeys}{#2}% Set new keys
      \ifdim\tab@width<\columnwidth%
        \begin{table}[#1]%
        \centering%
        \renewcommand\arraystretch{\tab@arraystretch}%
        \centerline{\parbox{\tab@width}{\caption{#3}}}%\par%
        \ifx\tab@resize\tab@excl%
          {\tablebodyfont#4}%
        \else%
          \resizebox{\tab@resize}{!}{\tablebodyfont#4}%
        \fi%
        \end{table}%
      \else%
        \begin{table*}[#1]%
        \centering%
        \renewcommand\arraystretch{\tab@arraystretch}%
        \centerline{\parbox{\tab@width}{\caption{#3}}}%\par%
        \ifx\tab@resize\tab@excl%
          {\tablebodyfont#4}%
        \else%
          \resizebox{\tab@resize}{!}{\tablebodyfont#4}%
        \fi%
        \end{table*}%
      \fi%
}

%%%
%headers
% title page
\def\headName{}
\def\@pubid{}
\def\markboth#1#2{\def\leftmark{#1}\def\rightmark{#2}}
\def\thevol{4}
\def\theyear{2016}
\def\vol#1{\gdef\thevol{#1}}
\def\year#1{\gdef\theyear{#1}}
\def\pubid#1{\gdef\@pubid{#1}}
\def\headname#1{\gdef\headName{#1}}
\ifjtehm
  \def\headerlogo{\raisebox{-2pt}{\includegraphics[width=7.61pc]{jtehmLogo.png}}}
  \def\ps@titlepage{%
     \def\@oddhead{\parbox[t]{\textwidth}{\mbox{}\\[-6.3mm]{\raisebox{5pt}%
       {{\titlepageheaderfont\color{accessblue}\headName}}}%
       \hfill\headerlogo\mbox{}\vspace*{-3.5mm}\par\rule{30.54pc}{.3pt}}}
     \def\@evenhead{\parbox[t]{\textwidth}{\mbox{}\\[-6.3mm]\mbox{}\headerlogo%
       \hfill{\raisebox{5pt}{{\titlepageheaderfont\color{accessblue}\headName}}}%
       \vspace*{-3.5mm}\par\mbox{}\hfill\rule{30.54pc}{.3pt}}}
     \def\@oddfoot{\raisebox{3pt}{%%
       \hbox to 0pc{\hbox to \textwidth{{\footervolfont VOLUME\ \thevol, \theyear}\hfill\mbox{}}}%
       \hbox to 0pc{\hbox to \textwidth{\mbox{}\hfill{\footervolfont\@pubid}\hfill\mbox{}}}%
       \hbox to 0pc{\hbox to \textwidth{\mbox{}\hfill{\footerpagefont\@artnum}}}%\hspace*{1.8pc}
       }}
     \def\@evenfoot{\raisebox{3pt}{%
       \hbox to 0pc{\hbox to \textwidth{{\footerpagefont\@artnum}}\hfill\mbox{}}\hspace*{1.8pc}%\hspace*{-1.8pc}
       \hbox to 0pc{\hbox to \textwidth{\mbox{}\hfill{\footervolfont\@pubid}\hfill\mbox{}}}%
       \hbox to 0pc{\hbox to \textwidth{\mbox{}\hfill{\footervolfont VOLUME\ \thevol, \theyear}}}%
     }}
  }
% normal page
  \def\ps@headings{%
     \def\@oddhead{\parbox[t]{\textwidth}{\mbox{}\\[-6.3mm]{\raisebox{5pt}%
       {\headerfont\rightmark}}\hfill\headerlogo\mbox{}\vspace*{-3.55mm}\par%
       \rule{30.54pc}{.3pt}}}
     \def\@evenhead{\parbox[t]{\textwidth}{\mbox{}\\[-6.3mm]\mbox{}%
       \headerlogo\hfill{\raisebox{5pt}{\headerfont\leftmark}}\vspace*{-3.55mm}\par%
       \mbox{}\hfill\rule{30.54pc}{.3pt}}}
     \def\@oddfoot{\raisebox{8pt}{%
       \hbox to 0pc{\hbox to \textwidth{{\footervolfont VOLUME\ \thevol, \theyear}\hfill\mbox{}}}%
       \hbox to 0pc{\hbox to \textwidth{\mbox{}\hfill{\footerpagefont\@artnum}}}%\hspace*{1.8pc}
       }}
     \def\@evenfoot{\raisebox{8pt}{%
       \hbox to 0pc{\hbox to \textwidth{{\footerpagefont\@artnum}\mbox{}\hfill}}%\hspace*{1.8pc}%\hspace*{-1.8pc}
       \hbox to 0pc{\hbox to \textwidth{\mbox{}\hfill{\footervolfont VOLUME\ \thevol, \theyear}}}%
     }}
  }
\else
  \def\headerlogo{\raisebox{-2pt}{\includegraphics[width=7.61pc]{logo.png}}}
  \def\headerlogoall{\raisebox{-2pt}{\includegraphics[width=7.61pc]{notaglinelogo.png}}}
  \def\ps@titlepage{%
    \def\@oddhead{\parbox[t]{\textwidth}{\mbox{}\\[-6.3mm]\mbox{}\nheaderfont\color{accessblue}\headName\hfill\headerlogo{\raisebox{-2pt}{\,}}\color{black}\vspace*{-1.5mm}\par\hrulefill}}
    \def\@evenhead{\parbox[t]{\textwidth}{\mbox{}\\[-6.3mm]\mbox{}\headerlogo\hfill\nheaderfont\color{accessblue}\headName{\raisebox{-2pt}{\,}}\color{black}\vspace*{-1.5mm}\par\hrulefill}}
     \def\@oddfoot{\raisebox{3pt}{%%
       \hbox to 0pc{\hbox to \textwidth{{\footervolfont VOLUME\ \thevol, 2016}\hfill\mbox{}}}%
       \hbox to 0pc{\hbox to \textwidth{\mbox{}\hfill{\footervolfont\@pubid}\hfill\mbox{}}}%
       \hbox to 0pc{\hbox to \textwidth{\mbox{}\hfill{\footerpagefont\thepage}}}%\hspace*{1.8pc}
       }}
     \def\@evenfoot{\raisebox{3pt}{%
       \hbox to 0pc{\hbox to \textwidth{{\footerpagefont\thepage}\hfill}\mbox{}}\hspace*{1.8pc}%\hspace*{1.8pc}
       \hspace*{-1.8pc}\hbox to 0pc{\hbox to \textwidth{\mbox{}\hfill{\footervolfont\@pubid}\hfill\mbox{}}}%
       \hbox to 0pc{\hbox to \textwidth{\mbox{}\hfill{\footervolfont VOLUME\ \thevol, 2016}}}\hspace*{1.8pc}% [updated here]
     }}
  }
% normal page
  \def\ps@headings{%
     \def\@oddhead{\parbox[t]{\textwidth}{\mbox{}\\[-6.3mm]{\raisebox{-2pt}{\headerfont\rightmark}}\hfill\headerlogoall\mbox{}\vspace*{-1.5mm}\par\hrulefill}}
     \def\@evenhead{\parbox[t]{\textwidth}{\mbox{}\\[-6.3mm]\mbox{}\headerlogoall\hfill{\raisebox{-2pt}{\headerfont\leftmark}}\vspace*{-1.5mm}\par\hrulefill}}
     \def\@oddfoot{\raisebox{8pt}{%
       \hbox to 0pc{\hbox to \textwidth{{\footervolfont VOLUME\ \thevol, 2016}\hfill\mbox{}}}%
       \hbox to 0pc{\hbox to \textwidth{\mbox{}\hfill{\footerpagefont\thepage}}}%\hspace*{1.8pc}
       }}
     \def\@evenfoot{\raisebox{8pt}{%
       \hbox to 0pc{\hbox to \textwidth{{\footerpagefont\thepage}\mbox{}\hfill}}\hspace*{1.8pc}%\hspace*{-1.8pc}
       \hspace*{-1.8pc}\hbox to 0pc{\hbox to \textwidth{\mbox{}\hfill{\footervolfont VOLUME\ \thevol, 2016}}}\hspace*{1.8pc}% [updated here]
     }}
  }
\fi
%%%
%title
\newlength\titlewidth
\newlength\abstractwidth
\ifjtehm
  \setlength\titlewidth{35.90pc}
  \let\abstractwidth\titlewidth
\else
  \setlength\titlewidth{152.83mm}
  \let\abstractwidth\titlewidth
  \advance\abstractwidth by -2.39mm
\fi
\newcounter{addrCtr}
\newsavebox\abstractbox
\newsavebox\indexbox

\def\abstracttitle{{\color{accessblue}\abstractheadfont ABSTRACT}\ifjtehm\quad\else\space\fi}
\def\indextitle{{\color{accessblue}\indexheadfont INDEX TERMS}\ifjtehm\quad\else\space\fi}
\def\history#1{\gdef\@history{#1}}\let\@history\@empty%
\def\artnum#1{\gdef\@artnum{#1}}
\def\doi#1{\gdef\@doi{#1}}
\def\title#1{\gdef\@title{#1}}
\def\authorrefmark#1{\textsuperscript{#1}}
\def\corresp#1{\gdef\@corresp{#1}}\let\@corresp\@empty%
\def\tfootnote#1{\gdef\@tfootnote{#1}}\let\@tfootnote\@empty%
\def\author#1{\gdef\@author{#1}}
\def\address{\@ifnextchar[{\@address}{\@address[\unskip]}}
\def\@address[#1]#2{\stepcounter{addrCtr}%
     \expandafter\gdef\csname addrInd\theaddrCtr\endcsname{#1}%
     \expandafter\gdef\csname addr\theaddrCtr\endcsname{#2}%
}

\newdimen\absht
\renewenvironment{abstract}
     {\global\setbox99=\hbox\bgroup\noindent%
      \ifjtehm\else\raisebox{-.8pc}{\includegraphics[width=0.5em]{bullet.png}}\hspace*{1.5mm}\fi%
      \begin{minipage}[t]{\abstractwidth}%
      \abstracttitle\bodyfont%
     }
     {\end{minipage}%
      \egroup%
      \global\setlength\absht{\the\dp99}%
     }

\newdimen\kwdht
\ifdefined\keywords\else\newenvironment{keywords}{}{}\fi
\ifdefined\IEEEkeywords\else\newenvironment{IEEEkeywords}{}{}\fi
\renewenvironment{keywords}
     {\global\setbox88=\hbox\bgroup\noindent%
      \ifjtehm\else\raisebox{-.8pc}{\includegraphics[width=0.5em]{bullet.png}}\hspace*{1.5mm}\fi%
      \begin{minipage}[t]{\abstractwidth}%
      \indextitle\bodyfont%
     }
     {\end{minipage}%
      \egroup%
      \global\setlength\kwdht{\the\dp88}%
     }
\renewenvironment{IEEEkeywords}
     {\global\setbox88=\hbox\bgroup\noindent%
      \ifjtehm\else\raisebox{-.8pc}{\includegraphics[width=0.5em]{bullet.png}}\hspace*{1.5mm}\fi%
      \begin{minipage}[t]{\abstractwidth}%
      \indextitle\bodyfont%
     }
     {\end{minipage}%
      \egroup%
      \global\setlength\kwdht{\the\dp88}%
     }

%% for adding linenumbers in abstract and keywords
\newcount\@tempcntc
\begingroup
  \catcode`P=12
  \catcode`T=12
  \lowercase{
    \def\x{\def\rem@dec##1.##2PT{##1}}}
  \expandafter\endgroup\x
\def\strip@dec{\expandafter\rem@dec\the}

\newskip\titlepgskip
\setlength\titlepgskip{0pt}
\def\docstrip#1.#2\@nil{#1}
\begingroup
  \catcode`P=12
  \catcode`T=12
  \lowercase{
    \def\x{\def\rem@pt##1.##2PT{##1\ifnum##2>\z@.##2\fi}}}
  \expandafter\endgroup\x
\def\strip@pt{\expandafter\rem@pt\the}
\def\fixSkip#1{%
     \@tempdima=#1%
     \advance\@tempdima by 12pt%
     \multiply\@tempdima by 2%
     \xdef\actualht{\the\@tempdima}%
     \multiply\@tempdima by 10%
     \divide\@tempdima by 12%
     \xdef\efg{\strip@pt\@tempdima}%
     \xdef\jag{\expandafter\docstrip\efg\@nil}%
     \@tempcnta=\jag%
     \divide\@tempcnta by 10%
     \multiply\@tempcnta by 12%
     \xdef\projectedht{\the\@tempcnta pt}%
     \@tempdimb=\actualht%
     \advance\@tempdimb by -\projectedht%
     \xdef\roundinght{\the\@tempdimb}%
     \box\maketitlebox%
%     }}}
     \vspace*{\roundinght}%
     \vspace*{3.5pt}%
     \vspace*{\titlepgskip}%
}

\newsavebox\maketitlebox
\def\@jtehmmaketitle{%
     \setbox\maketitlebox\hbox\bgroup%
     \begin{tabular*}{\textwidth}{@{}p{2.96pc}@{}p{\titlewidth}@{}p{3.15pc}@{}}%
     &\begin{center}\vspace*{1.2mm}\vspace*{-1.21pc}\centering%
     {\vss\historyfont\@history\vss}\vspace*{2mm}\par%
     {\vss\doifont Digital Object Identifier\space\@doi\vss}\vspace*{7.4mm}\par%
     {\vss\color{accessblue}\titlefont\@title\vss}\vspace*{6mm}\par%
     \ifjtehmeditorial\else{\vss\authorfont\@author\vss}\vspace*{1mm}\par%
       \@tempdima=\absht%\the\ht99%
       \xdef\abc{\strip@dec\@tempdima}%
       \@tempcntb=\abc%
%       \advance\@tempcntb by -10%
       \@tempcnta=0%
       \@tempcntc=0%
       \raisebox{-6pt}{\llap{\smash{\parbox[t]{2pc}{%
       \loop\ifnum\@tempcnta<\@tempcntb%
       \advance\@tempcnta by 12%
       \advance\@tempcntc by 1%
       \strut%
       {\strut\mbox{}\abstractfont\vphantom{X}\strut}\strut\\%
        \repeat\vspace*{2pt}%
       }}}}%
     \noindent\box99\vspace{6mm}\par%
     \@tempcnta=0%
     \loop\ifnum\@tempcnta<\theaddrCtr%
       \advance\@tempcnta by 1%
       \par{\vss\addressfont\textsuperscript{\expandafter\csname addrInd\the\@tempcnta\endcsname}%\space%
        \expandafter\csname addr\the\@tempcnta\endcsname\vss}%
     \repeat\vspace*{1mm}\par\fi%
     {\vss\correspfont\@corresp\vss\vspace{2mm}}\par%
     \ifjtehmeditorial\else{\vss\tfootnotefont\@tfootnote\vss\vspace{7mm}}\fi\end{center}\par%
     \ifjtehmeditorial\else\vspace*{-.4pc}\hrulefill\par\fi%
       {\strut\mbox{}\abstractfont\vphantom{X}\strut}\strut\\%
     \noindent\box88\par\vspace*{.7pc}\hrulefill\par\vspace{20mm}\par\fi%
     &\end{tabular*}\par%
     \egroup%
     \fixSkip{\the\ht\maketitlebox}%
}
\def\@maketitle{%
     \setbox\maketitlebox\hbox\bgroup%
     \begin{minipage}{\titlewidth}%
     \raggedright\vspace*{1.2mm}%
     \ifaccesseditors\else{\vss\historyfont\@history\vss}\vspace*{2mm}\par\fi%
     {\vss\doifont Digital Object Identifier\space\@doi\vss}\vspace*{7.4mm}\par%
     {\vss\color{accessblue}\titlefont\@title\vss}\vspace*{6mm}\par%
     \ifaccesseditors\vspace*{2mm}\else{\vss\authorfont\@author\vss}\vspace*{0mm}\par%
%       \@tempdima=\absht%\the\ht99%
%       \xdef\abc{\strip@dec\@tempdima}%
%       \@tempcntb=\abc%
%%       \advance\@tempcntb by -10%
%       \@tempcnta=0%
%       \@tempcntc=0%
%       \raisebox{-6pt}{\llap{\smash{\parbox[t]{2pc}{%
%       \loop\ifnum\@tempcnta<\@tempcntb%
%       \advance\@tempcnta by 12%
%       \advance\@tempcntc by 1%
%       \strut%
%       {\strut\mbox{}\abstractfont\vphantom{X}\strut}\strut\\%
%        \repeat\vspace*{2pt}%
%       }}}}%
     \@tempcnta=0%
     \loop\ifnum\@tempcnta<\theaddrCtr%
       \advance\@tempcnta by 1%
       \par{\vss\addressfont\textsuperscript{\expandafter\csname addrInd\the\@tempcnta\endcsname}%\space%
        \expandafter\csname addr\the\@tempcnta\endcsname\vss}%
     \repeat\vspace*{1mm}\par%
     {\vss\correspfont\@corresp\vss\vspace{2mm}}\par\fi%
     {\vss\tfootnotefont\@tfootnote\vss\vspace{7mm}}\par%
     \noindent\box99\vspace{6mm}\par%
     \ifaccesseditors\vspace*{8mm}\else%
     \noindent\box88\vspace{18mm}\par%
     \fi%
     \end{minipage}\par%
     \egroup%
     \fixSkip{\the\ht\maketitlebox}%
}
\def\editorialmaketitle{\thispagestyle{titlepage}\onecolumngrid%
%     \setbox\maketitlebox\hbox\bgroup%
     \noindent\begin{minipage}[b]{\titlewidth}%\vspace*{0mm}%
     \raggedright%\vspace*{1.2mm}%
     {\vss\doifont Digital Object Identifier\space\@doi\vss}\vspace*{4mm}\par%
     {\vss\color{accessblue}\titlefont\@title\vss}\vspace*{6mm}\par%
     \end{minipage}\par%
%     \egroup%
%     \fixSkip{\the\ht\maketitlebox}%
}
\def\maketitle{\ifaccesseditorial%
     \ifjtehmeditorial\twocolumn[{\thispagestyle{titlepage}\@jtehmmaketitle%
     \vskip 0.3\baselineskip plus 0.1\baselineskip minus 0.1\baselineskip%
     \vspace*{\baselineskip}}]\fi%
     \else\twocolumn[\thispagestyle{titlepage}\ifjtehm\@jtehmmaketitle\else\@maketitle\fi%
     \vskip 0.3\baselineskip plus 0.1\baselineskip minus 0.1\baselineskip%
     \ifjtehm\vspace*{\baselineskip}\else\vspace*{-1pt}\vspace*{-24pt}\fi]\fi}%\ifjtehm\bodyfont\fi}
\ps@headings
\pagenumbering{arabic}
\flushbottom
\emergencystretch=2pt


\def\IEEEmembership#1{{\membershipfont(#1)}}

\ifjtehm
  \def\burl#1{%
    \@tfor\xx:=#1\do{%
    \href{#1}{\xx}\linebreak[0]%
    }%
  }%
  \RequirePackage[hidelinks=true,bookmarks=false]{hyperref}%
\fi

%%%
%bibliography
\def\@biblabel#1{[#1]}
\def\refname{REFERENCES}
\def\thebibliography#1{%
    \restoreSection%
    \section*{\refname}%
    \addcontentsline{toc}{section}{\refname}%
    \normalfont\referencefont\vskip 0.3\baselineskip plus 0.1\baselineskip minus 0.1\baselineskip%
    \list{\@biblabel{\@arabic\c@enumiv}}%
    {\settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth
    \advance\leftmargin\labelsep\relax
    \itemsep 0pt plus .5pt\relax%
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \renewcommand\theenumiv{\@arabic\c@enumiv}}%
    \let\@IEEElatexbibitem\bibitem%
    \def\bibitem{\@IEEEbibitemprefix\@IEEElatexbibitem}%
\def\newblock{\hskip .11em plus .33em minus .07em}%
\sloppy\clubpenalty4000\widowpenalty4000\interlinepenalty500%
    \sfcode`\.=1000\relax}
\let\endthebibliography=\endlist
%%%
%biography
%Biography with a photograph
\ifdefined\biography\else\newenvironment{biography}{}{}\fi
\ifdefined\IEEEbiography\else\newenvironment{IEEEbiography}{}{}\fi
\ifdefined\biographynophoto\else\newenvironment{biographynophoto}{}{}\fi
\ifdefined\IEEEbiographynophoto\else\newenvironment{IEEEbiographynophoto}{}{}\fi
\renewenvironment{biography}[2][]{\normalfont\biographyfont%
\unitlength 1in\parskip=0pt\par\parindent 1em\interlinepenalty500%
% we need enough space to support the hanging indent
% the nominal value of the spacer
% and one extra line for good measure
\@IEEEtrantmpdimenA=\@IEEEBIOhangdepth%
\advance\@IEEEtrantmpdimenA by \@IEEEBIOskipN%
\advance\@IEEEtrantmpdimenA by 1\baselineskip%
% if this page does not have enough space, break it and lets start
% with a new one
\@IEEEtranneedspace{\@IEEEtrantmpdimenA}{\relax}%
% nominal spacer can strech, not shrink use 1fil so user can out stretch with \vfill
\vskip \@IEEEBIOskipN plus 1fil minus 0\baselineskip%
% the default box for where the photo goes
\def\@IEEEtempbiographybox{{\setlength{\fboxsep}{0pt}\framebox{\begin{minipage}[b][\@IEEEBIOphotodepth][c]{\@IEEEBIOphotowidth}\centering PLACE\\ PHOTO\\ HERE \end{minipage}}}}%
%
% detect if the optional argument was supplied, this requires the
% \@ifmtarg command as defined in the appendix section above
% and if so, override the default box with what they want
\@ifmtarg{#1}{\relax}{\def\@IEEEtempbiographybox{\mbox{\begin{minipage}[b][\@IEEEBIOphotodepth][c]{\@IEEEBIOphotowidth}%
\centering%
#1%
\end{minipage}}}}% end if optional argument supplied
% Make an entry into the table of contents only if we have not done so before
% one more biography
% Make an entry for this name into the table of contents 
\addcontentsline{toc}{subsection}{#2}%
% V1.6 properly handle if a new paragraph should occur while the
% hanging indent is still active. Do this by redefining \par so
% that it will not start a new paragraph. (But it will appear to the
% user as if it did.) Also, strip any leading pars, newlines, or spaces.
\let\@IEEEBIOORGparCMD=\par% save the original \par command
\edef\par{\hfil\break\indent}% the new \par will not be a "real" \par
\settoheight{\@IEEEtrantmpdimenA}{\@IEEEtempbiographybox}% get height of biography box
\@IEEEtrantmpdimenB=\@IEEEBIOhangdepth%
\@IEEEtrantmpcountA=\@IEEEtrantmpdimenB% countA has the hang depth
\divide\@IEEEtrantmpcountA by \baselineskip%  calculates lines needed to produce the hang depth
\advance\@IEEEtrantmpcountA by 1% ensure we overestimate
% set the hanging indent
\hangindent\@IEEEBIOhangwidth%
\hangafter-\@IEEEtrantmpcountA%
% reference the top of the photo area to the top of a capital T
\settoheight{\@IEEEtrantmpdimenB}{\mbox{T}}%
% set the photo box, give it zero width and height so as not to disturb anything
\noindent\makebox[0pt][l]{\hspace{-\@IEEEBIOhangwidth}\raisebox{\@IEEEtrantmpdimenB}[0pt][0pt]{\raisebox{-\@IEEEBIOphotodepth}[0pt][0pt]{\@IEEEtempbiographybox}}}%
% now place the author name and begin the bio text
\noindent{\biographyheadfont\uppercase {#2}\ }\@IEEEgobbleleadPARNLSP}{\relax\let\par=\@IEEEBIOORGparCMD\par%
% 7/2001 V1.5 detect when the biography text is shorter than the photo area
% and pad the unused area - preventing a collision from the next biography entry
% MDS
\ifnum \prevgraf <\@IEEEtrantmpcountA\relax% detect when the biography text is shorter than the photo
    \advance\@IEEEtrantmpcountA by -\prevgraf% calculate how many lines we need to pad
    \advance\@IEEEtrantmpcountA by -1\relax% we compensate for the fact that we indented an extra line
    \@IEEEtrantmpdimenA=\baselineskip% calculate the length of the padding
    \multiply\@IEEEtrantmpdimenA by \@IEEEtrantmpcountA%
    \noindent\rule{0pt}{\@IEEEtrantmpdimenA}% insert an invisible support strut
\fi%
\par\normalfont}
\renewenvironment{IEEEbiography}[2][]{\normalfont\biographyfont%
\unitlength 1in\parskip=0pt\par\parindent 1em\interlinepenalty500%
% we need enough space to support the hanging indent
% the nominal value of the spacer
% and one extra line for good measure
\@IEEEtrantmpdimenA=\@IEEEBIOhangdepth%
\advance\@IEEEtrantmpdimenA by \@IEEEBIOskipN%
\advance\@IEEEtrantmpdimenA by 1\baselineskip%
% if this page does not have enough space, break it and lets start
% with a new one
\@IEEEtranneedspace{\@IEEEtrantmpdimenA}{\relax}%
% nominal spacer can strech, not shrink use 1fil so user can out stretch with \vfill
\vskip \@IEEEBIOskipN plus 1fil minus 0\baselineskip%
% the default box for where the photo goes
\def\@IEEEtempbiographybox{{\setlength{\fboxsep}{0pt}\framebox{\begin{minipage}[b][\@IEEEBIOphotodepth][c]{\@IEEEBIOphotowidth}\centering PLACE\\ PHOTO\\ HERE \end{minipage}}}}%
%
% detect if the optional argument was supplied, this requires the
% \@ifmtarg command as defined in the appendix section above
% and if so, override the default box with what they want
\@ifmtarg{#1}{\relax}{\def\@IEEEtempbiographybox{\mbox{\begin{minipage}[b][\@IEEEBIOphotodepth][c]{\@IEEEBIOphotowidth}%
\centering%
#1%
\end{minipage}}}}% end if optional argument supplied
% Make an entry into the table of contents only if we have not done so before
% one more biography
% Make an entry for this name into the table of contents 
\addcontentsline{toc}{subsection}{#2}%
% V1.6 properly handle if a new paragraph should occur while the
% hanging indent is still active. Do this by redefining \par so
% that it will not start a new paragraph. (But it will appear to the
% user as if it did.) Also, strip any leading pars, newlines, or spaces.
\let\@IEEEBIOORGparCMD=\par% save the original \par command
\edef\par{\hfil\break\indent}% the new \par will not be a "real" \par
\settoheight{\@IEEEtrantmpdimenA}{\@IEEEtempbiographybox}% get height of biography box
\@IEEEtrantmpdimenB=\@IEEEBIOhangdepth%
\@IEEEtrantmpcountA=\@IEEEtrantmpdimenB% countA has the hang depth
\divide\@IEEEtrantmpcountA by \baselineskip%  calculates lines needed to produce the hang depth
\advance\@IEEEtrantmpcountA by 1% ensure we overestimate
% set the hanging indent
\hangindent\@IEEEBIOhangwidth%
\hangafter-\@IEEEtrantmpcountA%
% reference the top of the photo area to the top of a capital T
\settoheight{\@IEEEtrantmpdimenB}{\mbox{T}}%
% set the photo box, give it zero width and height so as not to disturb anything
\noindent\makebox[0pt][l]{\hspace{-\@IEEEBIOhangwidth}\raisebox{\@IEEEtrantmpdimenB}[0pt][0pt]{\raisebox{-\@IEEEBIOphotodepth}[0pt][0pt]{\@IEEEtempbiographybox}}}%
% now place the author name and begin the bio text
\noindent{\biographyheadfont\uppercase {#2}\ }\@IEEEgobbleleadPARNLSP}{\relax\let\par=\@IEEEBIOORGparCMD\par%
% 7/2001 V1.5 detect when the biography text is shorter than the photo area
% and pad the unused area - preventing a collision from the next biography entry
% MDS
\ifnum \prevgraf <\@IEEEtrantmpcountA\relax% detect when the biography text is shorter than the photo
    \advance\@IEEEtrantmpcountA by -\prevgraf% calculate how many lines we need to pad
    \advance\@IEEEtrantmpcountA by -1\relax% we compensate for the fact that we indented an extra line
    \@IEEEtrantmpdimenA=\baselineskip% calculate the length of the padding
    \multiply\@IEEEtrantmpdimenA by \@IEEEtrantmpcountA%
    \noindent\rule{0pt}{\@IEEEtrantmpdimenA}% insert an invisible support strut
\fi%
\par\normalfont}


%Biography without photograph
% added biography without a photo environment
\renewenvironment{biographynophoto}[1]{%
% Make an entry into the table of contents only if we have not done so before
\if@biographyTOCentrynotmade%
% link labels to the biography counter so hyperref will jump
% to the biography, not the previous section
\setcounter{biography}{-1}%
\refstepcounter{biography}%
\addcontentsline{toc}{section}{Biographies}%
\global\@biographyTOCentrynotmadefalse%
\fi%
% one more biography
\refstepcounter{biography}%
% Make an entry for this name into the table of contents 
\addcontentsline{toc}{subsection}{#1}%
\normalfont\biographyfont\interlinepenalty500%
\vskip 4\baselineskip plus 1fil minus 0\baselineskip%
\parskip=0pt\par%
\noindent{\biographyheadfont\uppercase{#1}\ }\@IEEEgobbleleadPARNLSP}{\relax\par\normalfont}
\renewenvironment{IEEEbiographynophoto}[1]{%
% Make an entry into the table of contents only if we have not done so before
\if@biographyTOCentrynotmade%
% link labels to the biography counter so hyperref will jump
% to the biography, not the previous section
\setcounter{biography}{-1}%
\refstepcounter{biography}%
\addcontentsline{toc}{section}{Biographies}%
\global\@biographyTOCentrynotmadefalse%
\fi%
% one more biography
\refstepcounter{biography}%
% Make an entry for this name into the table of contents 
\addcontentsline{toc}{subsection}{#1}%
\normalfont\biographyfont\interlinepenalty500%
\vskip 4\baselineskip plus 1fil minus 0\baselineskip%
\parskip=0pt\par%
\noindent{\biographyheadfont\uppercase{#1}\ }\@IEEEgobbleleadPARNLSP}{\relax\par\normalfont}

\def\EOD{\ifaccesseditors\else\mbox{}\newline\hspace*{\fill}\mbox{\rotatebox{90}{\includegraphics[width=0.5em]{bullet.png}}}\fi\global\eoddefinedtrue}

\ifaccesseditors
\def\bioaddressfont{\sffamily\putfont{T1}{formata}{n}{n}{8}{10}}
\def\bionamefont{\sffamily\fontencoding{T1}\fontseries{m}\fontsize{10}{12}\selectfont}%formata medium 8pt
\let\biobodyfont\biographyfont
%\def\biosc#1{{\fontsize{7}{12}\selectfont\MakeUppercase{#1}}}

%Biography with a photograph for accesseditors
\newenvironment{ebbiography}[3][]{\normalfont\biobodyfont%
\unitlength 1in\parskip=0pt\par\parindent 1em\interlinepenalty500%
% we need enough space to support the hanging indent
% the nominal value of the spacer
% and one extra line for good measure
\@IEEEtrantmpdimenA=\@IEEEBIOhangdepth%
\advance\@IEEEtrantmpdimenA by \@IEEEBIOskipN%
\advance\@IEEEtrantmpdimenA by 1\baselineskip%
% if this page does not have enough space, break it and lets start
% with a new one
\@IEEEtranneedspace{\@IEEEtrantmpdimenA}{\relax}%
% nominal spacer can strech, not shrink use 1fil so user can out stretch with \vfill
%\vskip \@IEEEBIOskipN plus 1fil minus 0\baselineskip%
% the default box for where the photo goes
\def\@IEEEtempbiographybox{{\setlength{\fboxsep}{0pt}\framebox{\begin{minipage}[b][\@IEEEBIOphotodepth][c]{\@IEEEBIOphotowidth}\centering PLACE\\ PHOTO\\ HERE \end{minipage}}}}%
%
% detect if the optional argument was supplied, this requires the
% \@ifmtarg command as defined in the appendix section above
% and if so, override the default box with what they want
\@ifmtarg{#1}{\relax}{\def\@IEEEtempbiographybox{\mbox{\begin{minipage}[b][\@IEEEBIOphotodepth][c]{\@IEEEBIOphotowidth}%
\centering%
#1%
\end{minipage}}}}% end if optional argument supplied
% Make an entry into the table of contents only if we have not done so before
% Make an entry for this name into the table of contents 
\addcontentsline{toc}{subsection}{#2}%
% V1.6 properly handle if a new paragraph should occur while the
% hanging indent is still active. Do this by redefining \par so
% that it will not start a new paragraph. (But it will appear to the
% user as if it did.) Also, strip any leading pars, newlines, or spaces.
\let\@IEEEBIOORGparCMD=\par% save the original \par command
\edef\par{\hfil\break\indent}% the new \par will not be a "real" \par
\settoheight{\@IEEEtrantmpdimenA}{\@IEEEtempbiographybox}% get height of biography box
\@IEEEtrantmpdimenB=\@IEEEBIOhangdepth%
\@IEEEtrantmpcountA=\@IEEEtrantmpdimenB% countA has the hang depth
\divide\@IEEEtrantmpcountA by \baselineskip%  calculates lines needed to produce the hang depth
\advance\@IEEEtrantmpcountA by 1% ensure we overestimate
% set the hanging indent
\hangindent\@IEEEBIOhangwidth%
\hangafter-\@IEEEtrantmpcountA%
% reference the top of the photo area to the top of a capital T
\settoheight{\@IEEEtrantmpdimenB}{\mbox{T}}%
% set the photo box, give it zero width and height so as not to disturb anything
\noindent\makebox[0pt][l]{\hspace{-\@IEEEBIOhangwidth}\raisebox{\@IEEEtrantmpdimenB}[0pt][0pt]{\raisebox{-\@IEEEBIOphotodepth}[0pt][0pt]{\@IEEEtempbiographybox}}}%
% now place the author name and begin the bio text
\noindent{\rightskip 0pt plus 1fil\bionamefont#2\\\bioaddressfont#3}\@IEEEgobbleleadPARNLSP}{\relax\let\par=\@IEEEBIOORGparCMD\par%
% 7/2001 V1.5 detect when the biography text is shorter than the photo area
% and pad the unused area - preventing a collision from the next biography entry
% MDS
\ifnum \prevgraf <\@IEEEtrantmpcountA\relax% detect when the biography text is shorter than the photo
    \advance\@IEEEtrantmpcountA by -\prevgraf% calculate how many lines we need to pad
    \advance\@IEEEtrantmpcountA by -1\relax% we compensate for the fact that we indented an extra line
    \@IEEEtrantmpdimenA=\baselineskip% calculate the length of the padding
    \multiply\@IEEEtrantmpdimenA by \@IEEEtrantmpcountA%
    \noindent\rule{0pt}{\@IEEEtrantmpdimenA}% insert an invisible support strut
\fi%
\par\biobodyfont}

%Biography without photograph for accesseditors
% added biography without a photo environment
\newenvironment{ebbiographynophoto}[1]{%
% Make an entry into the table of contents only if we have not done so before
% Make an entry for this name into the table of contents 
\addcontentsline{toc}{subsection}{#1}%
\normalfont\biobodyfont\interlinepenalty500%
\vspace{\baselineskip}%plus 1fil minus 0\baselineskip%
\parskip=0pt\par%
\noindent{{\biographyheadfont #1}\ }\@IEEEgobbleleadPARNLSP}{\relax\par\biobodyfont}

\newenvironment{editorialbiography}[4][]{%
\begin{ebbiography}[{\includegraphics[width=1in,height=1.25in,clip,keepaspectratio]{#1}}]{#2}{#3}
\end{ebbiography}\par\begin{ebbiographynophoto}{#4}}
    {\end{ebbiographynophoto}\vspace{2\baselineskip}}
\fi

\AtEndDocument{%
  \ifjtehm\else%
   \ifeoddefined\else%
   \ClassError{ieeeaccess}
     {You have not used the command \string\EOD\space at the end of \MessageBreak
      last para in the document. I have reached end of the document searching for it}%
     {Please put the macro \string\EOD\space in the end of the last para. 
     (End of last biography or end of last reference.)}%
   \fi%
  \fi%
}

\AtBeginDocument{%
\gdef\operator@encoding{T1}
\gdef\encodingdefault{T1}
%\def\it{\fontencoding{T1}\selectfont}
\def\bf{\fontencoding{T1}\fontseries{b}\selectfont}
\def\rm{\fontencoding{T1}\selectfont}
}

\def\headeretal{{\iheaderfont et al.}}

\ifdefined\PARstart\ifdefined\IEEEPARstart\else\let\IEEEPARstart\PARstart\fi\fi
\ifdefined\IEEEPARstart\ifdefined\PARstart\else\let\PARstart\IEEEPARstart\fi\fi

\endinput
