export TORCH_HOME=./$TORCH_HOME
bash tools/dist_train.sh configs/bevdet/dair-v2x/bevdet4d-height-r50-depth-cbgs-dair-v2x-i.py 8
bash tools/dist_test.sh configs/bevdet/dair-v2x/bevdet4d-height-r50-depth-cbgs-dair-v2x-i.py work_dirs/bevdet4d-height-r50-depth-cbgs-dair-v2x-i/epoch_24_ema.pth 8 --eval mAP