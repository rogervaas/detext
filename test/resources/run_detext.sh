#!/usr/bin/env bash
PYTHONPATH=../../src python ../../src/detext/run_detext.py \
--ftr_ext cnn \
--feature_names query,label,wide_ftrs,doc_title,usr_headline,wide_ftrs_sp_idx,wide_ftrs_sp_val \
--emb_sim_func inner concat diff \
--elem_rescale True \
--learning_rate 0.001 \
--ltr softmax \
--max_len 32 \
--min_len 3 \
--filter_window_sizes 1 2 3 \
--num_filters 50 \
--num_hidden 100 \
--num_train_steps 10 \
--num_units 32 \
--num_wide 2 \
--num_wide_sp 100 \
--sp_emb_size 10 \
--optimizer bert_adam \
--pmetric ndcg@10 \
--all_metrics ndcg@10 precision@1 \
--random_seed 11 \
--steps_per_stats 1 \
--steps_per_eval 2 \
--num_eval_rounds 10 \
--test_batch_size 2 \
--train_batch_size 2 \
--use_deep True \
--dev_file sample_data/hc_examples.tfrecord \
--test_file sample_data/hc_examples.tfrecord \
--train_file sample_data/hc_examples.tfrecord \
--vocab_file vocab.txt \
--out_dir /tmp/detext-output/hc_cnn_f50_u32_h100 \
--add_first_dim_for_query_placeholder True \
--add_first_dim_for_usr_placeholder True