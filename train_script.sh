export TORCH_HOME=/model$TORCH_HOME
source /opt/conda/etc/profile.d/conda.sh
conda activate
bash tools/dist_train.sh configs/bevdet/bevdet4d-swinB-depth-cbgs.py 4
bash tools/dist_test.sh configs/bevdet/bevdet4d-swinB-depth-cbgs.py work_dirs/bevdet4d-swinB-depth-cbgs/epoch_20_ema.pth 4 --eval mAP
