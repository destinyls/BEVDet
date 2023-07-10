export TORCH_HOME=/model$TORCH_HOME
source /opt/conda/etc/profile.d/conda.sh
conda activate
# bash tools/dist_train.sh configs/bevdet/bevdet4d-2-r101-depth-cbgs.py 8
bash tools/dist_test.sh configs/bevdet/bevdet4d-2-r101-depth-cbgs.py /model/work_dirs/bevdet4d-2-r101-depth-cbgs/epoch_19_ema.pth 8 --eval mAP
bash tools/dist_test.sh configs/bevdet/bevdet4d-2-r101-depth-cbgs.py /model/work_dirs/bevdet4d-2-r101-depth-cbgs/epoch_18_ema.pth 8 --eval mAP
bash tools/dist_test.sh configs/bevdet/bevdet4d-2-r101-depth-cbgs.py /model/work_dirs/bevdet4d-2-r101-depth-cbgs/epoch_17_ema.pth 8 --eval mAP
