# Code for "TimeFT: Rethinking Time Series Tokenization from a Frequency Domain Perspective" 

"TimeFT: Rethinking Time Series Tokenization from a Frequency Domain Perspective" is under reviewing at NIPS 2026.

## What is TimeMAC?

Tokenization that partitions time series into subsequences has become a foundational paradigm in modern time series modeling. Although effective in the time domain, we find that these tokenization strategies inherently introduce spectral distortion. These distortions force the learned representations to diverge from the true underlying patterns of the original signal. Through theoretical analysis from a frequency-domain perspective, we characterize the boundary conditions under which such distortions occur. To overcome this fundamental limitation, we propose \textbf{TimeFT}, a theoretically distortion-free frequency-based tokenizer for time series modeling. TimeFT obtains tokens through frequency-domain partitioning, frequency shifting, and Nyquist sampling. The method is parameter-free, incurs negligible computational complexity, and can serve as a drop-in replacement for existing tokenizers. Extensive experiments on forecasting, classification, and anomaly detection demonstrate that TimeFT consistently and significantly improves performance.

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
Special thanks to the following repositories for their invaluable code and prompt.

Our code are partially adapted from [Time-Series-Library](https://github.com/thuml/Time-Series-Library) and [TimeMosaic](https://github.com/BenchCouncil/TimeMosaic).

