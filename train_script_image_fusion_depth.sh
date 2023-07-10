export TORCH_HOME=/model$TORCH_HOME
source /opt/conda/etc/profile.d/conda.sh
conda activate

bash tools/dist_train.sh configs/bevdet/bevdet4d-height-2-r50-depth-cbgs-image-fusion-depth.py 8
bash tools/dist_test.sh configs/bevdet/bevdet4d-height-2-r50-depth-cbgs-image-fusion-depth.py /model/work_dirs/bevdet4d-height-2-r50-depth-cbgs-image-fusion-depth/epoch_19_ema.pth 8 --eval mAP
bash tools/dist_test.sh configs/bevdet/bevdet4d-height-2-r50-depth-cbgs-image-fusion-depth.py /model/work_dirs/bevdet4d-height-2-r50-depth-cbgs-image-fusion-depth/epoch_18_ema.pth 8 --eval mAP
bash tools/dist_test.sh configs/bevdet/bevdet4d-height-2-r50-depth-cbgs-image-fusion-depth.py /model/work_dirs/bevdet4d-height-2-r50-depth-cbgs-image-fusion-depth/epoch_17_ema.pth 8 --eval mAP
bash tools/dist_test.sh configs/bevdet/bevdet4d-height-2-r50-depth-cbgs-image-fusion-depth.py /model/work_dirs/bevdet4d-height-2-r50-depth-cbgs-image-fusion-depth/epoch_16_ema.pth 8 --eval mAP



