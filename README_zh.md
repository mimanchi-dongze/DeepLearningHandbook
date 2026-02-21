# 深度学习数学图鉴 (Deep Learning Mathematics Atlas) 🚀

简体中文 | [English](README.md)

![编译状态](https://img.shields.io/badge/编译-通过-brightgreen)
![许可协议: CC BY-NC-SA 4.0](https://img.shields.io/badge/许可-CC%20BY--NC--SA%204.0-lightgrey.svg)
![版本](https://img.shields.io/badge/版本-2.3.0--Rosetta-orange.svg)
![排版](https://img.shields.io/badge/排版-Springer%20标准-008080.svg)

**打破学术数学与工程实现之间的“次元壁”。**

本手册是专为深度学习从业者打造的“罗塞塔石碑”。它提供了严谨的数学定义（LaTeX）与现代框架（PyTorch）实际实现之间的 1:1 直接映射。

## 🌟 核心亮点

- **罗塞塔石碑布局**：创新的左右对照排版，左侧公式推导，右侧代码实现，一眼看穿底层逻辑。
- **SOTA 架构全覆盖**：深度剖析 Transformer、Mamba (SSM)、LoRA 以及扩散模型 (Diffusion) 的数学本质。
- **高品质视觉图解**：基于标准化 TikZ 库绘制的专业架构图，包含阴影效果、语义化配色及梯度流向标注。
- **极高的数学深度**：内容涵盖从基础张量运算、高级线性代数到信息论、随机过程（SDE）的完整链路。
- **学术级排版**：采用 Springer 出版标准的 Times New Roman 字体，辅以 4cm 不对称宽侧栏，预留批注空间。

## 📖 目录架构

手册分为七大核心板块：

1.  **基石篇 (Foundations)**：张量基础、高级线性代数 (SVD, QR)、概率论基础。
2.  **解剖篇 (Anatomy)**：激活函数、标准算子 (Linear, Conv)、序列层 (RNN, LSTM)、归一化。
3.  **目标篇 (Objectives)**：距离度量、信息论与概率损失函数。
4.  **动力篇 (Dynamics)**：自动微分 (VJP/JVP)、优化算法、随机过程 (Wiener, SDE)。
5.  **架构篇 (Architectures)**：多头注意力机制、生成模型 (VAE, GAN)。
6.  **大模型纪元 (Foundation Models)**：LLM 核心组件、Mamba (SSM)、PEFT (LoRA)。
7.  **前沿探索 (The Frontiers)**：对抗训练、图神经网络、量化技术、下一代生成模型 (Flow Matching)。

## 🛠️ 编译指南

### 环境要求
- LaTeX 发行版：推荐 Windows 用户使用 [MiKTeX](https://miktex.org/)，Linux/macOS 用户使用 [TeX Live](https://tug.org/texlive/)。
- 编译器：`pdflatex`。

### 自动化编译
我们提供了跨平台的脚本以实现一键编译：

**Windows:**
```cmd
build.bat
```

**macOS / Linux:**
```bash
make
```

**清理中间文件：**
```bash
build.bat clean  # Windows
make clean       # Unix
```

## 🤝 参与贡献

我们非常欢迎社区参与补全这份“图鉴”！如果您想添加新的 SOTA 模型（如 DeepSeek MLA, FlashAttention）或修正笔误，请参阅 [CONTRIBUTING.md](CONTRIBUTING.md)。

## 📜 许可协议

本项目采用 [知识共享署名-非商业性使用-相同方式共享 4.0 国际许可协议 (CC BY-NC-SA 4.0)](http://creativecommons.org/licenses/by-nc-sa/4.0/) 进行许可。

由 Antigravity & Sisyphus 倾力设计。
