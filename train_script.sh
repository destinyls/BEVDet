export TORCH_HOME=/model$TORCH_HOME
source /opt/conda/etc/profile.d/conda.sh
conda activate

bash tools/dist_train.sh configs/bevdet/bevdet4d-height-2-r50-depth-cbgs.py 8
bash tools/dist_test.sh configs/bevdet/bevdet4d-height-2-r50-depth-cbgs.py /model/work_dirs/bevdet4d-height-2-r50-depth-cbgs/epoch_25_ema.pth 8 --eval mAP
bash tools/dist_test.sh configs/bevdet/bevdet4d-height-2-r50-depth-cbgs.py /model/work_dirs/bevdet4d-height-2-r50-depth-cbgs/epoch_24_ema.pth 8 --eval mAP
bash tools/dist_test.sh configs/bevdet/bevdet4d-height-2-r50-depth-cbgs.py /model/work_dirs/bevdet4d-height-2-r50-depth-cbgs/epoch_23_ema.pth 8 --eval mAP
bash tools/dist_test.sh configs/bevdet/bevdet4d-height-2-r50-depth-cbgs.py /model/work_dirs/bevdet4d-height-2-r50-depth-cbgs/epoch_22_ema.pth 8 --eval mAP
bash tools/dist_test.sh configs/bevdet/bevdet4d-height-2-r50-depth-cbgs.py /model/work_dirs/bevdet4d-height-2-r50-depth-cbgs/epoch_21_ema.pth 8 --eval mAP
bash tools/dist_test.sh configs/bevdet/bevdet4d-height-2-r50-depth-cbgs.py /model/work_dirs/bevdet4d-height-2-r50-depth-cbgs/epoch_20_ema.pth 8 --eval mAP

