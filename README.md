# SAPA+Grad-Match

This is an implementation of SAPA+Grad-Match based on the original Grad-Match repo. 

### Dependencies:
* PyTorch => 1.6.*
* torchvision > 0.5.*
- efficientnet_pytorch [```pip install --upgrade efficientnet-pytorch``` only if EfficientNet is used]
* python-lmdb [only if datasets are supposed to be written to an LMDB]


## USAGE:

The cmd-line script ```brew_poison.py``` can be run with default parameters to get a first impression for a ResNet18 on CIFAR10.

### Cifar10 Example
To poison Cifar10 for a ResNet18 with epsilon bound 16, changing 1% of the full training dataset, with sharpness threshold 0.05, use
```python -u brew_poison.py --net ResNet18 --dataset CIFAR10 --eps 16 --budget 0.01 --pbatch 128 --poison_path YOUR_PATH_POISON --name YOUR_NAME_EXP --save numpy --savename YOUR_NAME_SAVER --optimization standard --target_criterion worstsharp --sharpsigma 0.05 ```
