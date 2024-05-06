#!/bin/bash
#SBATCH --exclude=lac-143
#SBATCH --job-name=4-gm-e8p01
#SBATCH --mem=60G
#SBATCH --time=4:00:00
#SMATCH --mail-type=ALL
#SBATCH --mail-user=hepengf1@msu.edu
#SBATCH --output=log/rn18-e8p01-4
#SBATCH --gres=gpu:v100:1

module load Conda/3
module load Conda/3
source activate gp2
cd ..
cd ..

python -u brew_poison.py --net ResNet18 --eps 8 --budget 0.001 --pretrained --dataset ImageNet1k --data_path /mnt/scratch/hepengf1/imagenet_1k --pbatch 128 --target_criterion worstsharp --sharpsigma 0.05 --restarts 2