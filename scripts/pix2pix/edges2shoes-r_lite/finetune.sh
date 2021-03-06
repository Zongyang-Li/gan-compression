#!/usr/bin/env bash
python train_supernet.py --dataroot database/edges2shoes-r \
  --supernet resnet \
  --log_dir logs/pix2pix/edges2shoes-r_lite/finetune \
  --batch_size 4 \
  --restore_teacher_G_path logs/pix2pix/edges2shoes-r_lite/mobile/checkpoints/latest_net_G.pth \
  --restore_student_G_path logs/pix2pix/edges2shoes-r_lite/supernet-stage2/checkpoints/latest_net_G.pth \
  --restore_D_path logs/pix2pix/edges2shoes-r_lite/supernet-stage2/checkpoints/latest_net_D.pth \
  --real_stat_path real_stat/edges2shoes-r_B.npz \
  --nepochs 5 --nepochs_decay 15 \
  --teacher_ngf 64 --student_ngf 64 \
  --config_str $1
