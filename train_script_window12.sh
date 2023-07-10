export TORCH_HOME=/model$TORCH_HOME
source /opt/conda/etc/profile.d/conda.sh
conda activate
bash tools/dist_train.sh configs/bevdet/bevdet4d-swinB-window12-depth-cbgs.py 8
bash tools/dist_test.sh configs/bevdet/bevdet4d-swinB-window12-depth-cbgs.py work_dirs/bevdet4d-swinB-window12-depth-cbgs/epoch_20_ema.pth 8 --eval mAP
