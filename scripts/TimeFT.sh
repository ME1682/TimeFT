export CUDA_VISIBLE_DEVICES=0

model_name=FreqTokenizer #PatchTST

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/ETT-small/ \
  --data_path ETTm1.csv \
  --model_id ETTm1_320_336 \
  --model $model_name \
  --data ETTm1 \
  --features M \
  --seq_len 320 \
  --label_len 48 \
  --pred_len 336 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1\
  --n_heads 8 \
  --patch_len 20\
  --stride 20\
  --learning_rate 0.00005  \
  --train_epochs 70

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/ETT-small/ \
  --data_path ETTm1.csv \
  --model_id ETTm1_320_720 \
  --model $model_name \
  --data ETTm1 \
  --features M \
  --seq_len 320 \
  --label_len 48 \
  --pred_len 720 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1\
  --n_heads 8 \
  --patch_len 20\
  --stride 20\
  --learning_rate 0.00005  \
  --train_epochs 70

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/ETT-small/ \
  --data_path ETTm1.csv \
  --model_id ETTm1_320_96 \
  --model $model_name \
  --data ETTm1 \
  --features M \
  --seq_len 320 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1\
  --n_heads 4 \
  --patch_len 20\
  --stride 20\
  --learning_rate 0.00005  \
  --train_epochs 70

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/ETT-small/ \
  --data_path ETTm1.csv \
  --model_id ETTm1_320_192 \
  --model $model_name \
  --data ETTm1 \
  --features M \
  --seq_len 320 \
  --label_len 48 \
  --pred_len 192 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1\
  --n_heads 4 \
  --patch_len 20\
  --stride 20\
  --learning_rate 0.00005  \
  --train_epochs 70
