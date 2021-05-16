%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Copyright (C) 2021, BasinChen.
% University of science and technology LiaoNing
% @file     cls file of thesis template
% @author   Yuchen LIU
% @version  2.0
% @date     22-Apr-2021
% ***************************************************************
% @attention PLEASE READ "README.md" FILE！
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{ustlthesis}[2021/1/22 version 2.0]
\LoadClass[a4paper,UTF8,12pt]{ctexart}
\RequirePackage{ctex,amsmath,setspace}
\RequirePackage{fancyhdr,zhlipsum,booktabs}
\RequirePackage{lipsum,caption,subcaption,hyperref}
\RequirePackage{graphicx,floatrow,titlesec,float}
\RequirePackage{titletoc,cite}
\RequirePackage{abstract}

\newcommand*{\song}{\CJKfamily{zhsong}} % 宋体
\newcommand*{\hei}{\CJKfamily{zhhei}} % 黑体
\newcommand*{\kai}{\CJKfamily{zhkai}} % 楷书
\renewcommand{\baselinestretch}{1.25}    % 1.5倍行距
\newcommand{\erhao}{\fontsize{22pt}{33pt}\selectfont}
\newcommand{\sanhao}{\fontsize{16pt}{24pt}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{21pt}\selectfont}
\newcommand{\xiaosi}{\fontsize{12pt}{18pt}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}
\renewcommand{\theequation}{\thesection.\arabic{equation}}%公式编号
\counterwithin{equation}{section}%从每章开始重新编号？
\counterwithin{table}{section}
\counterwithin{figure}{section}
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}} %参考文献引用
\RequirePackage[numbers,super]{natbib}
\RequirePackage{url}
\setcitestyle{open={[},close={]}}
\renewcommand{\footnotesize}{\fontsize{10.5pt}{\baselineskip}\selectfont}
\renewcommand{\thetable}{\thesection.\arabic{table}}
\renewcommand{\thefigure}{\thesection.\arabic{figure}}

\ctexset{
section = {
format = \raggedright\sanhao\bfseries,
}
}
\ctexset{
   subsection = {
format = \raggedright\sihao\bfseries,
}
}

\ctexset{
   subsubsection = {
format = \raggedright\xiaosi\bfseries,
}
}

\RequirePackage[left=2.5cm,right=2.5cm,top=3cm,bottom=2.5cm]{geometry}
\pagestyle{fancy}
\fancyhead[C]{辽宁科技大学本科生毕业设计(论文)}
\fancyhead[R]{第 \thepage 页}
\fancyhead[L]{}
\fancyfoot[C]{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%这是目录的设置，请勿修改
\titlecontents{section}
    [0mm]
    {\xiaosi \hei \vspace{7.5pt}}%
    {\contentslabel{6.35mm}}%
    {}%
    {{~\titlerule*[0.6pc]{$.$}~\contentspage}}%
\titlecontents{subsection}
    [3.175mm]
    {\xiaosi \song \vspace{7.5pt}}%
    {\contentslabel{9.525mm}}%
    {}%
    {{~\titlerule*[0.6pc]{$.$}~\contentspage}}%
\titlecontents{subsubsection}
    [6.35mm]
    {\xiaosi \song \vspace{7.5pt}}%
    {\contentslabel{12.7mm}}%
    {}%
    {{~\titlerule*[0.6pc]{$.$}~\contentspage}}%
\titlecontents{paragraph}
    [9.525mm]
    {\xiaosi \song \vspace{7.5pt}}%
    {\contentslabel{15.875mm}}%
    {}%
{{~\titlerule*[0.6pc]{$.$}~\contentspage}}%
\newcommand\specialsectioning{\setcounter{secnumdepth}{-2}}
% 请勿修改
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\makeatletter % change default title style
\renewcommand*\maketitle{%
    \begin{center}% 居中标题
        \hei % 默认粗体
        {\erhao \@title \par} % 字号
        \vskip 1em% %%%  标题下面只有1em的缩进或margin
        {\global\let\author\@empty}%
        {\global\let\date\@empty}%
        %\thispagestyle{empty} %  不设置页面样式
    \end{center}%
  \setcounter{footnote}{0}%
}
\makeatother
\renewcommand\abstractname{\sanhao{摘要}}
\renewcommand{\abstracttextfont}{\xiaosi\kai}
\newcommand{\keywords}[1]{\vskip2ex\par\noindent\xiaosi{\sihao\hei 关键词: } #1}
\newcommand{\ekeywords}[1]{\vskip2ex\par\noindent\xiaosi{\sihao Key Words: }#1}

\bibliographystyle{gbt7714-2005}%参考文献格式
