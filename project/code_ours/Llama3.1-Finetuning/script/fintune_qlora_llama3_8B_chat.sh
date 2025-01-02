NCCL_P2P_DISABLE=1 \
NCCL_IB_DISABLE=1 \
CUDA_VISIBLE_DEVICES=0 \
torchrun \
--nproc_per_node 1 \
--nnodes 1 \
--node_rank 0 \
--master_addr localhost \
--master_port 6601 \
../finetune_llama3.py \
--model_name_or_path "/media/cellverse/share013/zhoushch/SI151A/LLM-Research/Meta-Llama-3-8B-Instruct" \
--data_path "/media/cellverse/share013/zhoushch/SI151A/processed_data/train.json" \
--bf16 True \
--output_dir "/media/cellverse/share013/zhoushch/SI151A/finetuned_ckpt" \
--num_train_epochs 100 \
--per_device_train_batch_size 1 \
--per_device_eval_batch_size 1 \
--gradient_accumulation_steps 16 \
--evaluation_strategy "no" \
--save_strategy "steps" \
--save_steps 1 \
--save_total_limit 1 \
--learning_rate 1e-5 \
--weight_decay 0.1 \
--adam_beta2 0.95 \
--warmup_ratio 0.01 \
--lr_scheduler_type "cosine" \
--logging_steps 10000 \
--report_to "none" \
--model_max_length 4096 \
--gradient_checkpointing True \
--lazy_preprocess True \
--deepspeed "../config/ds_config_zero2.json" \
--use_lora \
--load_in_4bit \
--q_lora