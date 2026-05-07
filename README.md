# Code for "Rethinking Time Series Tokenization from a Frequency Domain Perspective" 

"Rethinking Time Series Tokenization from a Frequency Domain Perspective" is under reviewing at NIPS 2026.

## What is TimeFT?

Tokenization that partitions time series into subsequences has become a foundational paradigm in modern time series modeling. However, we find that current tokenization strategies inherently introduce spectral distortions, forcing the learned representations to diverge from the true underlying patterns such as trend, periodicity, and seasonality, thereby impairing model performance. Through theoretical analysis from a frequency perspective, we derive the boundary conditions under which such distortions occur. To overcome this distortion, we propose **TimeFT**, a nearly distortion-free frequency-based tokenizer for time series data. TimeFT obtains tokens through frequency-domain partitioning, frequency shifting, and Nyquist sampling. The method is parameter-free, incurs negligible computational complexity, and can serve as a drop-in replacement for existing tokenizers. Our extensive experiments on diverse tasks such as forecasting, classification, and anomaly detection demonstrate that TimeFT consistently and significantly improves performance.

## Setup

All experiments run in Python 3.9 environment. You can install the dependency libraries as follows:

```
pip install -r requirements.txt
```

## Run the Code

Experiments can be run as follows:

```
$bash ./scripts/TimeFT.sh
```

## Acknowledge
Special thanks to the following repositories for their invaluable code.

Our code are partially adapted from [Time-Series-Library](https://github.com/thuml/Time-Series-Library) and [TimeMosaic](https://github.com/BenchCouncil/TimeMosaic).
