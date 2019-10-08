%%
%% This is file `cas-dc.cls'.
%%
%% This file is part of the 'CAS Bundle'.
%% ......................................
%% 
%% It may be distributed under the conditions of the LaTeX Project Public
%% License, either version 1.2 of this license or (at your option) any
%% later version.  The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.2 or later is part of all distributions of LaTeX
%% version 1999/12/01 or later.
%% 
%% The list of all files belonging to the 'CAS Bundle' is
%% given in the file `manifest.txt'.
%% 

%% $Id: cas-sc.cls 7 2019-02-13 12:02:17Z apu.v $

 \def\RCSfile{cas-sc}%
 \def\RCSversion{1.0}%
 \def\RCSdate{2018/09/22}%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{\RCSfile}[\RCSdate, \RCSversion: Formatting class
   for CAS single column articles]
%
\def\ABD{\AtBeginDocument}
%
% switches
% 
\newif\iflongmktitle    \longmktitlefalse
\newif\ifdc             \global\dcfalse
\newif\ifsc             \global\sctrue
\newif\ifcasreviewlayout  \global\casreviewlayoutfalse
\newif\ifcasfinallayout   \global\casfinallayoutfalse

\newcounter{blind}
\setcounter{blind}{0}

\def\blstr#1{\gdef\@blstr{#1}}
\def\@blstr{1}
\newdimen\@bls
\@bls=\baselineskip

\DeclareOption{singleblind}{\setcounter{blind}{1}}
\DeclareOption{doubleblind}{\setcounter{blind}{2}}
\DeclareOption{longmktitle}{\global\longmktitletrue}
\DeclareOption{final}{\global\casfinallayouttrue}
\DeclareOption{review}{\global\casreviewlayouttrue}

\ExecuteOptions{a4paper,10pt,oneside,fleqn,review}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass{article}

\RequirePackage{graphicx}
\RequirePackage{amsmath,amsfonts,amssymb}
\allowdisplaybreaks

\RequirePackage{expl3,xparse}
\@ifundefined{regex_match:nnTF}{\RequirePackage{l3regex}}{}
\RequirePackage{etoolbox}
\RequirePackage{booktabs,makecell,multirow,array,colortbl,dcolumn,stfloats}
\RequirePackage{xspace,xstring,footmisc}
\RequirePackage[svgnames,dvipsnames]{xcolor}

\RequirePackage[colorlinks]{hyperref}
\colorlet{scolor}{black}
\colorlet{hscolor}{DarkSlateGrey}
\hypersetup{%
  pdfcreator={LaTeX3; cas-sc.cls; hyperref.sty},
  pdfproducer={pdfTeX;},
  linkcolor={hscolor},
  urlcolor={hscolor},
  citecolor={hscolor},
  filecolor={hscolor},
  menucolor={hscolor},
}
% \AtEndDocument{\hypersetup
%   {pdftitle={\csuse{__short_title:}},
%   pdfauthor={\csuse{__short_authors:}}}}
 
 \let\comma\@empty
\let\tnotesep\@empty
\let\@title\@empty
%
% Load Common items
%

\RequirePackage{cas-common}

%
% Specific to Single Column
%
\ExplSyntaxOn

\RenewDocumentCommand \maketitle {}
{
  \ifbool { usecasgrabsbox }
    { 
      \setcounter{page}{0}
      \thispagestyle{empty}
      \unvbox\casgrabsbox  
    } { }  
  \pagebreak  
  \ifbool { usecashlsbox }
    { 
      \setcounter{page}{0}
      \thispagestyle{empty}
      \unvbox\casauhlbox
    } { }    
  \pagebreak  
  \thispagestyle{first}
  \ifbool{longmktitle}
  {
    \LongMaketitleBox
    \ProcessLongTitleBox
  }
  {
    \MaketitleBox
    \printFirstPageNotes
  }
  \normalcolor \normalfont
  \setcounter{footnote}{\int_use:N \g_stm_fnote_int}
  \renewcommand\thefootnote{\arabic{footnote}}
  \gdef\@pdfauthor{\infoauthors}
  \gdef\@pdfsubject{Complex ~STM ~Content}
}

%
% Fonts
%
\RequirePackage[T1]{fontenc}

\file_if_exist:nTF { stix.sty }
{
  \file_if_exist:nTF { charis.sty }
  {
    \RequirePackage[notext]{stix} 
    \RequirePackage{charis}
  }
  { \RequirePackage{stix} }
}
{
  \iow_term:x {  *********************************************************** }
  \iow_term:x { ~Stix ~ and ~ Charis~ fonts ~ are ~ not ~ available ~ }
  \iow_term:x { ~ in ~TeX~system.~Hence~CMR~ fonts~ are ~ used. }
  \iow_term:x {  *********************************************************** }
}

\file_if_exist:nTF { inconsolata }
{ \RequirePackage[scaled=.85]{inconsolata} }
{ \tex_gdef:D \ttdefault { cmtt } }


\ExplSyntaxOff

%
% Page geometry
%

\usepackage[%
  paperwidth=192mm,
  paperheight=262mm,
%  vmargin={12.4mm,11.5mm},
  vmargin={19mm,19mm},
  hmargin={13.7mm,13.7mm},
  headsep=12pt,
  footskip=12pt,
]{geometry}


\endinput
  
%
% End of class 'cas-sc'
%

