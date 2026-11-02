
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

🚩 **News** (Sep. 2026): TimeOmni-1 has been accepted to NeuIPS 2026! 🎉

## 📦 What is TimeFT?

Tokenization that partitions time series into subsequences has become a foundational paradigm in modern time series modeling. However, we find that current tokenization strategies inherently introduce spectral distortions, forcing the learned representations to diverge from the true underlying patterns such as trend, periodicity, and seasonality, thereby impairing model performance. Through theoretical analysis from a frequency perspective, we derive the boundary conditions under which such distortions occur. To overcome this distortion, we propose **TimeFT**, a nearly distortion-free frequency-based tokenizer for time series data. TimeFT obtains tokens through frequency-domain partitioning, frequency shifting, and Nyquist sampling. The method does not have additional learnable parameters, incurs negligible computational complexity, and can serve as a drop-in replacement for existing tokenizers. Our extensive experiments on diverse tasks such as forecasting, classification, and anomaly detection demonstrate that TimeFT consistently and significantly improves performance.

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

## 📊 Benchmarks
**Table. Model Size Scaling Comparison**

<p style="margin-top:13px;font-size:11px;opacity:0.7">
* Note: All metrics below are computed only on valid responses. “–” indicates a success rate (SR) below 10%; in such cases, results are omitted due to insufficient statistical significance, and we therefore do not report them. For ACC, higher is better; for MAE, lower is better. <strong>Bold</strong> marks the best value in each ACC/MAE column. 
</p>


<table style="width:100%;border-collapse:collapse;font-size:13px">
  <thead>
    <tr>
      <th style="padding:10px 7px;text-align:left;font-weight:700;border-bottom:2px solid #2563eb;color:#2563eb"></th>
      <th style="padding:10px 7px;text-align:center;font-weight:700;border-bottom:2px solid #2563eb;color:#2563eb;font-size:14px">Task1 ID (ACC↑/SR)</th>
      <th style="padding:10px 7px;text-align:center;font-weight:700;border-bottom:2px solid #2563eb;color:#2563eb;font-size:14px">Task1 OOD (ACC↑/SR)</th>
      <th style="padding:10px 7px;text-align:center;font-weight:700;border-bottom:2px solid #2563eb;color:#2563eb;font-size:14px">Task2 ID (ACC↑/SR)</th>
      <th style="padding:10px 7px;text-align:center;font-weight:700;border-bottom:2px solid #2563eb;color:#2563eb;font-size:14px">Task2 OOD (ACC↑/SR)</th>
      <th style="padding:10px 7px;text-align:center;font-weight:700;border-bottom:2px solid #2563eb;color:#2563eb;font-size:14px">Task3 ID (MAE↓/SR)</th>
      <th style="padding:10px 7px;text-align:center;font-weight:700;border-bottom:2px solid #2563eb;color:#2563eb;font-size:14px">Task3 OOD (MAE↓/SR)</th>
      <th style="padding:10px 7px;text-align:center;font-weight:700;border-bottom:2px solid #2563eb;color:#2563eb;font-size:14px">Task4 ID (ACC↑/SR)</th>
      <th style="padding:10px 7px;text-align:center;font-weight:700;border-bottom:2px solid #2563eb;color:#2563eb;font-size:14px">Task4 OOD (ACC↑/SR)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td colspan="9" style="padding:8px 12px;font-weight:600;font-style:italic;color:#2563eb;border-bottom:1px solid rgba(37, 99, 235, 0.2);background:rgba(37, 99, 235, 0.1)">7B (Qwen2.5-Instruct)</td>
    </tr>
    <tr>
      <td style="padding:7px 7px;padding-left:20px;border-bottom:1px solid rgba(128, 128, 128, 0.15);color:#2563eb">Qwen2.5-Instruct-7B</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">48.5/100.0</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">42.8/100.0</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">21.6/99.8</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">26.3/100.0</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">23.28/53.1</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">146.12/55.5</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">25.5/100.0</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">24.9/100.0</td>
    </tr>
    <tr>
      <td style="padding:7px 7px;padding-left:20px;border-bottom:1px solid rgba(128, 128, 128, 0.15);color:#2563eb"><strong>TimeOmni-1-7B</strong></td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">90.7/97.5</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">87.7/98.3</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">69.3/99.8</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">64.0/99.8</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">14.30/93.8</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">145.53/82.3</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">47.9/100.0</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">58.9/100.0</td>
    </tr>
    <tr>
      <td colspan="9" style="padding:8px 12px;font-weight:600;font-style:italic;color:#2563eb;border-bottom:1px solid rgba(37, 99, 235, 0.2);background:rgba(37, 99, 235, 0.1)">4B (Qwen3.5)</td>
    </tr>
    <tr>
      <td style="padding:7px 7px;padding-left:20px;border-bottom:1px solid rgba(128, 128, 128, 0.15);color:#2563eb">Qwen-3.5-4B</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">0.0/16.5</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">5.9/17.0</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">28.3/12.4</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">35.4/12.0</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">-/2.2</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">-/9.0</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">-/8.5</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">-/9.2</td>
    </tr>
    <tr>
      <td style="padding:7px 7px;padding-left:20px;border-bottom:1px solid rgba(128, 128, 128, 0.15);color:#2563eb"><strong>TimeOmni-1-4B</strong></td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">91.5/99.5</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">91.2/98.4</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)"><strong>71.1</strong>/100.0</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">66.1/99.9</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">13.68/97.6</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">170.41/86.1</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">58.5/100.0</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">72.0/100.0</td>
    </tr>
    <tr>
      <td colspan="9" style="padding:8px 12px;font-weight:600;font-style:italic;color:#2563eb;border-bottom:1px solid rgba(37, 99, 235, 0.2);background:rgba(37, 99, 235, 0.1)">9B (Qwen3.5)</td>
    </tr>
    <tr>
      <td style="padding:7px 7px;padding-left:20px;border-bottom:1px solid rgba(128, 128, 128, 0.15);color:#2563eb">Qwen-3.5-9B</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">91.2/51.0</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)"><strong>93.5</strong>/46.1</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">43.3/12.1</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">36.3/12.8</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">17.56/14.1</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">-/0.8</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)"><strong>64.2</strong>/28.2</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">72.0/32.2</td>
    </tr>
    <tr>
      <td style="padding:7px 7px;padding-left:20px;border-bottom:1px solid rgba(128, 128, 128, 0.15);color:#2563eb"><strong>TimeOmni-1-9B</strong></td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)"><strong>93.5</strong>/100.0</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">92.8/99.8</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">70.9/100.0</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)"><strong>66.2</strong>/100.0</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)"><strong>13.54</strong>/97.8</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)"><strong>140.06</strong>/95.6</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)">59.6/100.0</td>
      <td style="padding:7px 7px;text-align:center;border-bottom:1px solid rgba(128, 128, 128, 0.15)"><strong>75.6</strong>/99.6</td>
    </tr>
  </tbody>
</table>

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
