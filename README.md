# 福州大学硕士学位论文 LaTeX 模板

这是一个去个人信息的福州大学研究生学位论文 LaTeX 模板示例。仓库只保留模板结构、示例章节和编译配置，不包含个人论文正文、真实封面、答辩材料、实验图片或编译产物。

## 编译环境

推荐使用 TeX Live 2023 或更新版本，并使用 XeLaTeX + Biber 编译。

命令行编译：

```bash
xelatex fzuthesis.tex
biber fzuthesis
xelatex fzuthesis.tex
xelatex fzuthesis.tex
```

Windows 用户也可以直接运行：

```bat
compile_fzuthesis.bat
```

VS Code 用户可安装 LaTeX Workshop 插件，并使用仓库中的 `.vscode/settings.json`。

## 文件结构

```text
.
├── fzuthesis.tex          # 主文件
├── fzuthesis.cls          # 模板类文件
├── references.bib         # 示例参考文献
├── xCJKnumb.sty           # 中文章节编号辅助文件
├── Contents/              # 正文与后置章节
├── FIG/                   # 图片目录
├── compile_fzuthesis.bat  # Windows 编译脚本
└── .latexmkrc             # latexmk 配置
```

## 使用方法

1. 在 `fzuthesis.tex` 中修改题目、作者、学号、学院、专业、导师等信息。
2. 在 `Contents/abstract.tex` 中替换中英文摘要和关键词。
3. 在 `Contents/chapter01.tex`、`Contents/chapter02.tex` 等文件中撰写正文。
4. 在 `references.bib` 中维护参考文献，并在正文中使用 `\cite{}` 引用。
5. 在 `Contents/acknowledge.tex`、`Contents/CV.tex`、`Contents/publications.tex` 中填写后置材料。

## 正式封面

模板默认生成占位封面，便于快速编译。若已生成学校要求的正式封面与原创性声明，可将其保存为 `thesis_cover.pdf`，并把主文件第一行改为：

```tex
\documentclass[unicode,master,pdfcover]{fzuthesis}
```

启用后，模板会插入 `thesis_cover.pdf` 的前两页。`thesis_cover.pdf` 已在 `.gitignore` 中忽略，避免误提交个人信息。

## 字体说明

模板优先使用 Windows 常见字体 `Times New Roman`、`SimSun`、`SimHei`、`KaiTi`、`FangSong`。如果系统缺少这些字体，会回退到 TeX Live 自带字体。最终提交前请按学校当年格式要求检查字体和版式。

## 许可证

本项目使用 GPL-3.0 许可证。使用前请确认学校、学院和原始模板的相关要求。
