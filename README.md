# 福州大学研究生学位论文 LaTeX 模板

本仓库提供一套用于福州大学研究生学位论文写作的 LaTeX 模板。模板按照《福州大学研究生学位论文规范（2016 年 7 月修订）》整理，覆盖封面接入、中英文摘要、目录、正文、图表公式、参考文献、致谢、个人简历和在学期间研究成果等常用部分。

规范文件已放在 [docs/福州大学研究生学位论文规范（2016年修订）.pdf](docs/福州大学研究生学位论文规范（2016年修订）.pdf)。不同学院、不同年份的提交要求可能会有补充说明，最终提交前请以学校和学院当年通知为准。

## 编译环境

推荐环境：

- TeX Live 2023 或更新版本
- XeLaTeX
- Biber
- VS Code + LaTeX Workshop（可选）

命令行编译：

```bash
xelatex fzuthesis.tex
biber fzuthesis
xelatex fzuthesis.tex
xelatex fzuthesis.tex
```

Windows 用户也可以运行：

```bat
compile_fzuthesis.bat
```

## 目录结构

```text
.
├── fzuthesis.tex          # 主文档
├── fzuthesis.cls          # 文档类与版式设置
├── references.bib         # 参考文献数据库
├── xCJKnumb.sty           # 中文章节编号支持
├── Contents/              # 摘要、正文、致谢、简历、成果等内容文件
├── FIG/                   # 图片目录
├── docs/                  # 论文规范等说明文件
├── compile_fzuthesis.bat  # Windows 编译脚本
└── .latexmkrc             # latexmk 配置
```

## 基本使用

1. 在 `fzuthesis.tex` 中填写论文题目、作者、学号、学院、专业、导师等信息。
2. 在 `Contents/abstract.tex` 中撰写中英文摘要和关键词。
3. 在 `Contents/chapter01.tex`、`Contents/chapter02.tex` 等文件中撰写正文。
4. 在 `references.bib` 中维护参考文献，并在正文中使用 `\cite{}` 引用。
5. 在 `Contents/acknowledge.tex`、`Contents/CV.tex`、`Contents/publications.tex` 中填写后置材料。

## 封面与声明页

模板默认生成一页简化封面，便于写作阶段快速编译。正式提交时，建议使用学校要求的封面、独创性声明和论文使用授权页，并合并为 `thesis_cover.pdf` 放在项目根目录。

启用正式封面：

```tex
\documentclass[unicode,master,pdfcover]{fzuthesis}
```

启用后，模板会插入 `thesis_cover.pdf` 的前两页。该文件已被 `.gitignore` 忽略，避免误提交个人信息。

## 盲审版本

盲审版通常需要去除作者、导师、学号、致谢、个人简历、在学期间研究成果等可识别身份的信息。不同学院要求不完全一致，提交前请以当年盲审通知为准。

常用处理方式：

1. 准备盲审封面或匿名封面，保存为 `thesis_cover.pdf`，并启用 `pdfcover` 选项。
2. 如果写作阶段暂时没有盲审封面，可使用模板内置匿名封面：

```tex
\documentclass[unicode,master,blindreview]{fzuthesis}
```

3. 在 `fzuthesis.tex` 中临时注释以下内容：

```tex
% \include{Contents/acknowledge}
% \include{Contents/CV}
% \include{Contents/publications}
```

4. 检查正文、摘要、脚注、图片文件名、参考文献自引说明中是否出现姓名、导师、课题组、项目编号、论文和专利等身份线索。
5. 导出 PDF 后，再用 PDF 阅读器检查文档属性中的作者、标题等元数据。

## 字体说明

模板优先使用 Windows 常见字体 `Times New Roman`、`SimSun`、`SimHei`、`KaiTi`、`FangSong`。如果系统缺少这些字体，会回退到 TeX Live 自带字体。正式提交前，请按学校格式审核要求核对字体、字号、行距、页边距、目录、图表题名和参考文献格式。

## 致谢

本模板整理过程中参考了 [HuangTM23/FZU_Thesis](https://github.com/HuangTM23/FZU_Thesis) 的项目结构和格式适配思路，在此表示感谢。

## 许可

本项目使用 GPL-3.0 许可证发布。模板基于公开 LaTeX 模板整理和修改，使用、修改或再次发布时请保留相应许可信息。
