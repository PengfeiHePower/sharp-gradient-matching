#!/bin/bash
#SBATCH --exclude=lac-143
#SBATCH --job-name=8-gm-e16p005
#SBATCH --mem=60G
#SBATCH --time=4:00:00
#SMATCH --mail-type=ALL
#SBATCH --mail-user=hepengf1@msu.edu
#SBATCH --output=log/rn18-e16p005-8
#SBATCH --gres=gpu:v100:1

module load Conda/3
module load Conda/3
source activate gp2
cd ..
cd ..

python -u brew_poison.py --net ResNet18 --eps 16 --budget 0.0005 --pretrained --dataset ImageNet1k --data_path /mnt/scratch/hepengf1/imagenet_1k --pbatch 128 --target_criterion worstsharp --sharpsigma 0.05 --restarts 2