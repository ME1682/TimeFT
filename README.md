
<div align="center">
<img src="figs/logo.png" alt="Logo" width="120"/>

<h1><b>
(NeuIPS'26) Rethinking Time Series Tokenization from a Frequency Domain Perspective
</b></h1>


<p align="middle">
  <a href="https://arxiv.org/abs/2610.28997"
     style="text-decoration: none; display: inline-block; margin: 2px;">
    <img
      src="https://img.shields.io/badge/TimeFT-Paper-red?logo=arxiv&logoColor=red"
      style="display: inline-block; vertical-align: middle;"
      alt="TimeFT Paper on arXiv"
    />
  </a>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <a href="https://github.com/ME1682/TimeFT" target="_blank"
     style="text-decoration: none; display: inline-block; margin: 2px;">
    <img
      src="https://img.shields.io/badge/TimeFT-%20Code-536af5?logo=github&logoColor=white"
      style="display: inline-block; vertical-align: middle;"
      alt="TimeFT Code on GitHub"
    />
  </a>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <a href="https://neurips.cc/virtual/2026/loc/sydney/poster/149503" target="_blank"
     style="text-decoration: none; display: inline-block; margin: 2px;">
    <img
      src="https://img.shields.io/badge/TimeFT-%20NeuIPS-536af5?logo=bookstack&logoColor=white&logoColor=purple"
      style="display: inline-block; vertical-align: middle;"
      alt="TimeFT Paper on NeuIPS"
    />
  </a>
</p>

</div>

**This repository provides source code and usage scripts for TimeFT.**

>
> 🙋 Please let us know if you find out a mistake or have any suggestions!
> 
> 🌟 If you find this resource helpful, please consider to star this repository and cite our research:

## Updates/News:

🚩 **News** (Sep. 2026): TimeFT has been accepted to NeuIPS 2026! 🎉

## 🧪 What is TimeFT?

Tokenization that partitions time series into subsequences has become a foundational paradigm in modern time series modeling. However, we find that current tokenization strategies inherently introduce spectral distortions, forcing the learned representations to diverge from the true underlying patterns such as trend, periodicity, and seasonality, thereby impairing model performance. Through theoretical analysis from a frequency perspective, we derive the boundary conditions under which such distortions occur. To overcome this distortion, we propose **TimeFT**, a nearly distortion-free frequency-based tokenizer for time series data. TimeFT obtains tokens through frequency-domain partitioning, frequency shifting, and Nyquist sampling. The method does not have additional learnable parameters, incurs negligible computational complexity, and can serve as a drop-in replacement for existing tokenizers. Our extensive experiments on diverse tasks such as forecasting, classification, and anomaly detection demonstrate that TimeFT consistently and significantly improves performance.

![framework](figs/main_TimeFT.pdf)

## 🛠️ Setup

All experiments run in Python 3.9 environment. You can install the dependency libraries as follows:

```
pip install -r requirements.txt
```

## 📊 Evaluation

Experiments can be run as follows:

```
$bash ./scripts/TimeFT.sh
```

## 🚀 Acknowledge
Special thanks to the following repositories for their invaluable code:

[Time-Series-Library](https://github.com/thuml/Time-Series-Library) and [TimeMosaic](https://github.com/BenchCouncil/TimeMosaic).

## ✍️ Citation

```bibtex
@inproceedings{
Zelong2026TimeFT,
title={Rethinking Time Series Tokenization from a Frequency Perspective},
author={Zelong Tian and Ming Jin and Bo Du and Shirui Pan},
booktitle={The Fortieth Annual Conference on Neural Information Processing Systems},
year={2026},
url={https://openreview.net/forum?id=pexLx2W7yd}
}
```
