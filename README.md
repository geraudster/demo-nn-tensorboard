# Clone this repository with submodules

```
git clone https://github.com/geraudster/demo-nn-tensorboard.git
git submodule init
git submodule update
```

or more concisely:
```
git clone --recurse-submodules https://github.com/geraudster/demo-nn-tensorboard.git
```

# Install Tensorflow

```
pip install --upgrade "tensorflow==1.7.*"
```

# Copy your dataset

```
cd tensorflow-for-poets-2
cp -r ../alphashifumi/ tf_files/train_by_labels
```

The dataset should contain one directory by label:
```
tf_files/
└── train_by_labels
    ├── lizard
    ├── paper
    ├── rock
    ├── scissors
    └── spock
```

# Train your model

```
../retrain.sh
```
Take a ☕ while the bottleneck files are created.
During training you can play with `tensorboard`:
```
tensorboard --logdir tf_files/training_summaries &
```

# Predict

Label new image with `label.sh` script:
```
../label.sh <path to image>
```

# Going further

See https://codelabs.developers.google.com/codelabs/tensorflow-for-poets/#1 for more detailed instructions.
