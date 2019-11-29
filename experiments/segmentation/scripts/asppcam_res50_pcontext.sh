#!/usr/bin/env bash
#train
python train.py --dataset pcontext \
    --model asppcam --aux --dilated --base-size 608 --crop-size 576 \
    --backbone resnet50 --checkname asppcam_res50_pcontext

#test [single-scale]
python test.py --dataset pcontext \
    --model asppcam --aux --dilated --base-size 608 --crop-size 576 \
    --backbone resnet50 --resume runs/pcontext/asppcam/asppcam_res50_pcontext/model_best.pth.tar --split val --mode testval

#test [multi-scale]
python test.py --dataset pcontext \
    --model asppcam --aux --dilated --base-size 608 --crop-size 576 \
    --backbone resnet50 --resume runs/pcontext/asppcam/asppcam_res50_pcontext/model_best.pth.tar --split val --mode testval --ms