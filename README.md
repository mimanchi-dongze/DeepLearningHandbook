# Deep Learning Mathematics Atlas (深度学习数学图鉴) 🚀

[简体中文](README_zh.md) | English

![Build Status](https://img.shields.io/badge/build-passing-brightgreen)
![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg)
![Version](https://img.shields.io/badge/version-2.3.0--Rosetta-orange.svg)
![LaTeX](https://img.shields.io/badge/LaTeX-Springer--Level-008080.svg)

**Breaking the wall between Academic Math and Engineering Implementation.**

This handbook is a "Rosetta Stone" for Deep Learning practitioners. It provides a direct, side-by-side mapping between rigorous mathematical definitions (LaTeX) and their actual implementations in modern frameworks (PyTorch).

## 🌟 Key Features

- **Rosetta Stone Layout**: Side-by-side view of math formulas and PyTorch code.
- **SOTA Architectures**: Detailed mathematical breakdown of Transformer, Mamba (SSM), LoRA, and Diffusion Models.
- **High-Quality Visuals**: Standardized TikZ diagrams with professional aesthetics (shadows, semantic colors, gradient flow paths).
- **Mathematical Depth**: Covers everything from Tensor basics and Linear Algebra to Stochastic Processes and Information Theory.
- **Academic Typography**: Springer-level layout using Times New Roman and asymmetric wide margins for annotations.

## 📖 Content Structure

The handbook is organized into thematic "Parts":

1.  **Foundations (基石篇)**: Tensors, Advanced Linear Algebra (SVD, QR), Probability Foundations.
2.  **Anatomy (解剖篇)**: Activation Functions, Standard Layers (Linear, Conv), Sequence Layers (RNN, LSTM), Normalization.
3.  **Objectives (目标篇)**: Distance Metrics, Information Theory & Probabilistic Losses.
4.  **Dynamics (动力篇)**: Autograd (VJP/JVP), Optimization Algorithms, Stochastic Processes (Wiener, SDE).
5.  **Architectures (架构篇)**: Multi-Head Attention, Generative Models (VAE, GAN).
6.  **Foundation Models (大模型纪元)**: LLM Components, Mamba (SSM), PEFT (LoRA).
7.  **The Frontiers (前沿探索)**: Adversarial Training, Graph Neural Networks, Quantization, Next-Gen Generative (Flow Matching).

## 🛠️ Build Instructions

### Prerequisites
- A TeX distribution: [MiKTeX](https://miktex.org/) (Recommended for Windows) or [TeX Live](https://tug.org/texlive/).
- `pdflatex` compiler.

### Build the PDF
We provide automation scripts for a seamless build:

**Windows:**
```cmd
build.bat
```

**macOS / Linux:**
```bash
make
```

To clean intermediate files:
```bash
build.bat clean  # Windows
make clean       # Unix
```

## 🤝 Contributing

We welcome contributions to expand the "Atlas"! If you want to add a new SOTA model (e.g., DeepSeek MLA, FlashAttention) or fix a typo, please see [CONTRIBUTING.md](CONTRIBUTING.md).

## 📜 License

This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/). 

Designed with ❤️ by Antigravity & Sisyphus.
