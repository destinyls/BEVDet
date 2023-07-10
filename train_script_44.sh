export TORCH_HOME=/model$TORCH_HOME
source /opt/conda/etc/profile.d/conda.sh
conda activate

# bash tools/dist_train.sh configs/bevdet/bevdet4d-height-2-r50-depth-cbgs-44.py 8
bash tools/dist_test.sh configs/bevdet/bevdet4d-height-2-r50-depth-cbgs-44.py /model/work_dirs/bevdet4d-height-2-r50-depth-cbgs-44/epoch_10_ema.pth 8 --eval mAP
