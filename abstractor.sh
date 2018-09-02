#!/usr/bin/env bash
CUDA_VISIBLE_DEVICES=4,6,7 python -W ignore trainer.py \
	--dataset_name MSMARCO \
	--max_examples -1 \
	--restrict_vocab False \
	--tgt_vocab_size 80000 \
	--num_epochs 200 \
	--fix_embeddings True \
	--share_decoder_embeddings True \
	--batch_size 48 \
	--test_batch_size 48 \
	--skip_no_answer True \
	--reader_type bidaf \
	--coverage_attn False \
	--copy_attn True \
	--reuse_copy_attn True \
	--checkpoint True \
	--data_dir /home/wasiahmad/workspace/projects/msr_work/data/MSMARCO/intermediate/ \
	--train_file train_v2.1.json \
	--dev_file dev_v2.1.json \
	--dev_json dev_v2.1.json \
	--optfile /home/wasiahmad/workspace/projects/models/elmo/elmo_options.json \
	--wgtfile /home/wasiahmad/workspace/projects/models/elmo/elmo_weights.hdf5 \
	--embed_dir /home/wasiahmad/workspace/projects/glove/ \
	--embedding_file glove.6B.100d.txt \
	--model_dir ./qa_models_parallel/ \
	--only_test True \
	--model_name abstractor_with_copy