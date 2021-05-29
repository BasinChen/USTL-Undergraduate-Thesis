\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{ustlthesis}[2021/1/22 version 2.0]
\LoadClass[a4paper,UTF8,12pt]{ctexart}
\RequirePackage{amsmath}
\RequirePackage{fancyhdr,booktabs}
\RequirePackage{graphicx,float}
\RequirePackage{titletoc,cite}
\RequirePackage{abstract}
\RequirePackage{caption}
\RequirePackage[left=2.5cm,right=2.5cm,top=3cm,bottom=2.5cm]{geometry}
\setlength{\parskip}{0.5\baselineskip}
\newcommand*{\song}{\CJKfamily{zhsong}} % 宋体
\newcommand*{\hei}{\CJKfamily{zhhei}} % 黑体
\newcommand*{\kai}{\CJKfamily{zhkai}} % 楷书
\linespread{1.625}   % 1.5倍行距
%\newcommand{\erhao}{\fontsize{22pt}{33pt}\selectfont}
%\newcommand{\sanhao}{\fontsize{16pt}{24pt}\selectfont}
%\newcommand{\sihao}{\fontsize{14pt}{21pt}\selectfont}
%\newcommand{\xiaosi}{\fontsize{12pt}{18pt}\selectfont}
%\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}
\renewcommand{\theequation}{\thesection.\arabic{equation}}%公式编号
\captionsetup[figure]{labelfont={bf},font={bf,small},labelsep=space}
\captionsetup[table]{labelfont={bf},font={bf,small},labelsep=space}
\counterwithin{equation}{section}%从每章开始重新编号？
\counterwithin{table}{section}
\counterwithin{figure}{section}
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}} %参考文献引用
\RequirePackage[numbers,super]{natbib}
\setcitestyle{open={[},close={]}}
\renewcommand{\footnotesize}{\fontsize{10.5pt}{\baselineskip}\selectfont}
\renewcommand{\thetable}{\thesection.\arabic{table}}
\renewcommand{\thefigure}{\thesection.\arabic{figure}}

\ctexset{
section = {
format = \raggedright\zihao{3}\bfseries,
}
}
\ctexset{
   subsection = {
format = \raggedright\zihao{4}\bfseries,
}
}

\ctexset{
   subsubsection = {
format = \raggedright\zihao{-4}\bfseries,
}
}

\pagestyle{fancy}
\fancyhead[C]{辽宁科技大学本科生毕业设计(论文)}
\fancyhead[R]{第 \thepage 页}
\fancyhead[L]{}
\fancyfoot[C]{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%这是目录的设置，请勿修改
\renewcommand{\contentsname}{\centerline{目录}}
\titlecontents{section}
    [1em]
    {\zihao{-4} \hei \vspace{0em}}%
    {\contentslabel{1em}}%
    {}%
    {{~\titlerule*[0.6pc]{$.$}~\contentspage}}%
\titlecontents{subsection}
    [3em]
    {\zihao{-4} \song\vspace{0em}}%
    {\contentslabel{2em}}%
    {}%
    {{~\titlerule*[0.6pc]{$.$}~\contentspage}}%
\titlecontents{subsubsection}
    [5em]
    {\zihao{-4} \song\vspace{0em}}%
    {\contentslabel{3em}}%
    {}%
    {{~\titlerule*[0.6pc]{$.$}~\contentspage}}%

%\newcommand\specialsectioning{\setcounter{secnumdepth}{-2}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\makeatletter % change default title style
\renewcommand*\maketitle{%
    \begin{center}% 居中标题
        \hei % 默认粗体
        {\zihao{2} \@title \par} % 字号
        \vskip 1em% %%%  标题下面只有1em的缩进或margin
        {\global\let\author\@empty}%
        {\global\let\date\@empty}%
        %\thispagestyle{empty} %  不设置页面样式
    \end{center}%
  \setcounter{footnote}{0}%
}
\makeatother
\renewcommand\abstractname{\zihao{3}{摘要}}
\renewcommand{\abstracttextfont}{\zihao{-4}\kai}
\renewcommand{\absleftindent}{0cm}
\renewcommand{\absrightindent}{0cm}
\newcommand{\keywords}[1]{\vskip2ex\par\noindent\zihao{-4}{\zihao{4}\hei 关键词: } #1}
\newcommand{\ekeywords}[1]{\vskip2ex\par\noindent\zihao{-4}{\zihao{4}\bf Key Words: }#1}
\bibliographystyle{gbt7714-2005}%参考文献格式
