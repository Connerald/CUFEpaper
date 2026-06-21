% 摘要页设置
% 中文摘要页
\newcommand{\makeabstract}[2]{%
  \clearpage
  \thispagestyle{empty}
  \begin{center}
    {\heiti\zihao{2} \@papertitle \par} % 论文标题，黑体二号
    \vspace{1.5cm}
    {\CJKfontspec[AutoFakeBold]{SimSun}\zihao{3}\bfseries 内　容　摘　要 \par} % 内容摘要，宋体三号加粗
  \end{center}
  {\songti\zihao{-4}
    \setlength{\parindent}{2em}
    \setlength{\parskip}{0pt}
    \renewcommand{\baselinestretch}{1.5}\selectfont
    \everypar{{\setbox0=\lastbox}\indent} % 关键：强制每段缩进
    #1
    \par % 保证最后一段正常结束
    \everypar{} % 恢复默认，避免影响后文
  }
  {
    \par
    \textbf{关键词：}#2
  }
  \clearpage
}
