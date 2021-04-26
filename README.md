# USTL本科生毕业论文LaTe$模板说明

## 作者声明

* 论文模板作者：BasinChen，USTL自动化本科17级
* 本模板完全开源，如有修改建议，请发pull requests
* 如需联系作者，请发邮件至[421958880@qq.com](421958880@qq.com)

## 使用前必读

* 本模板基于TeXLive2020发行版编写，版本相差较大可能导致一些错误
* 对于新手而言，不建议没有$\LaTeX$使用经验的人直接使用本模板
* 在.cls文件中提供了一些注释，供有能力的使用者自行根据个人需求修改
* 关于参考文献的引用，根据学校要求采用gbt7714-2005标准下引用方式，而发行版默认方法高于此版本，具体配置方法请参考[https://www.latexstudio.net/archives/1541.html](https://www.latexstudio.net/archives/1541.html)。若要解除此限制，在cls文件最后注释掉 (在前面加“%”即可)
> \bibliographystyle{gbt7714-2005}
* 如果运行出错，建议删除辅助文件再次尝试
* 作者精力有限，尚未开发MacOS和Linux版本

## 编译
* 作者使用Visual Studio Code编写代码，并用Recipe：XeLaTeX -> BibTeX -> XeLaTeX*2编译
* 若引用参考文献处出现[?]或未生成目录，请按顺序重新编译一次

## 其他事项

* 本模板在均在本人课余时间完成，完全免费，请勿用于商业用途
* 由于本人水平有限，如有不妥之处敬请指教

Copyright (C) 2021, BasinChen.
All Rights Reserved.
