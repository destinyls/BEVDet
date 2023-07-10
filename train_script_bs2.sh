export TORCH_HOME=/model$TORCH_HOME
source /opt/conda/etc/profile.d/conda.sh
conda activate
bash tools/dist_train.sh configs/bevdet/bevdet4d-swinB-depth-cbgs-bs2.py 8
bash tools/dist_test.sh configs/bevdet/bevdet4d-swinB-depth-cbgs-bs2.py work_dirs/bevdet4d-swinB-depth-cbgs/epoch_20_ema.pth 8 --eval mAP
