python run_classifier_morp.py \
  --openapi_key 'user-key-required' \
  --task_name cola \
  --do_train \
  --do_eval \
  --data_dir ./data_classifier_sample \
  --vocab_file ../vocab.korean_morp.list \
  --bert_model_path .. \
  --max_seq_length 128 \
  --train_batch_size 4 \
  --learning_rate 2e-5 \
  --num_train_epochs 2.0 \
  --output_dir ./output

## bert_model_path 모델 파일이 존재하는 경로만 지정하고, 경로에는 아래와 같이 파일이 존재해야함
##                        bert_config.json
##                        pytorch_model.bin
##                        vocab.korean_morp.list
## data_dir tsv 형태로 3개의 파일이 필요. 
##                 train.tsv 학습에 필요한 데이터
##                 test.tsv 테스트에 필요한 데이터
##                 label.tsv multi label 처리를 위해 숫자형태로 한 라인에 하나의 lable을 저장한 파일
 