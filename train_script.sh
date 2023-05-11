bash tools/dist_train.sh configs/bevdet/bevdet4d-height-2-r101-depth-cbgs.py 8
bash tools/dist_test.sh configs/bevdet/bevdet4d-height-2-r101-depth-cbgs.py work_dirs/bevdet4d-height-2-r101-depth-cbgs/epoch_20_ema.pth 8 --eval mAP
bash tools/dist_test.sh configs/bevdet/bevdet4d-height-2-r101-depth-cbgs.py work_dirs/bevdet4d-height-2-r101-depth-cbgs/epoch_23_ema.pth 8 --eval mAP
bash tools/dist_test.sh configs/bevdet/bevdet4d-height-2-r101-depth-cbgs.py work_dirs/bevdet4d-height-2-r101-depth-cbgs/epoch_25_ema.pth 8 --eval mAP