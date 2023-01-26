export TORCH_HOME=./$TORCH_HOME
bash ./tools/dist_train.sh configs/bevdet/bevdet-r50.py 1
# python tools/test.py configs/bevdet/bevdet-r50.py --format-only --eval-options jsonfile_prefix=work_dirs/