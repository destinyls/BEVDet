bash tools/dist_train.sh configs/bevdet/bevdet4d-2-r50-depth-cbgs.py 8
bash tools/dist_test.sh configs/bevdet/bevdet4d-2-r50-depth-cbgs.py work_dirs/bevdet4d-2-r50-depth-cbgs/epoch_20_ema.pth 