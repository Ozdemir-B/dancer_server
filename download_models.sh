#!/bin/bash

BaseModelUrl="https://huggingface.co/runwayml/stable-diffusion-v1-5"
BaseModelDir="/app/magic-animate/pretrained_models/stable-diffusion-v1-5"

aria2c --console-log-level=error -c -x 16 -s 16 -k 1M "${BaseModelUrl}/raw/main/model_index.json" -d "${BaseModelDir}" -o "model_index.json"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M "${BaseModelUrl}/resolve/main/vae/diffusion_pytorch_model.bin" -d "${BaseModelDir}/vae" -o "diffusion_pytorch_model.bin"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M "${BaseModelUrl}/raw/main/vae/config.json" -d "${BaseModelDir}/vae" -o "config.json"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M "${BaseModelUrl}/resolve/main/unet/diffusion_pytorch_model.bin" -d "${BaseModelDir}/unet" -o "diffusion_pytorch_model.bin"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M "${BaseModelUrl}/raw/main/unet/config.json" -d "${BaseModelDir}/unet" -o "config.json"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M "${BaseModelUrl}/raw/main/tokenizer/vocab.json" -d "${BaseModelDir}/tokenizer" -o "vocab.json"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M "${BaseModelUrl}/raw/main/tokenizer/tokenizer_config.json" -d "${BaseModelDir}/tokenizer" -o "tokenizer_config.json"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M "${BaseModelUrl}/raw/main/tokenizer/special_tokens_map.json" -d "${BaseModelDir}/tokenizer" -o "special_tokens_map.json"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M "${BaseModelUrl}/raw/main/tokenizer/merges.txt" -d "${BaseModelDir}/tokenizer" -o "merges.txt"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M "${BaseModelUrl}/resolve/main/text_encoder/pytorch_model.bin" -d "${BaseModelDir}/text_encoder" -o "pytorch_model.bin"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M "${BaseModelUrl}/raw/main/text_encoder/config.json" -d "${BaseModelDir}/text_encoder" -o "config.json"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M "${BaseModelUrl}/raw/main/scheduler/scheduler_config.json" -d "${BaseModelDir}/scheduler" -o "scheduler_config.json"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M "${BaseModelUrl}/resolve/main/safety_checker/pytorch_model.bin" -d "${BaseModelDir}/safety_checker" -o "pytorch_model.bin"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M "${BaseModelUrl}/raw/main/safety_checker/config.json" -d "${BaseModelDir}/safety_checker" -o "config.json"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M "${BaseModelUrl}/raw/main/feature_extractor/preprocessor_config.json" -d "${BaseModelDir}/feature_extractor" -o "preprocessor_config.json"

BaseModelDir="/app/magic-animate/pretrained_models/sd-vae-ft-mse"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M "https://huggingface.co/stabilityai/sd-vae-ft-mse/resolve/main/diffusion_pytorch_model.bin?download=true" -d "${BaseModelDir}" -o "diffusion_pytorch_model.bin"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M "https://huggingface.co/stabilityai/sd-vae-ft-mse/resolve/main/config.json?download=true" -d "${BaseModelDir}" -o "config.json"

BASE_URL="https://huggingface.co/zcxu-eric/MagicAnimate/resolve/main"
BaseModelDir="/app/magic-animate/pretrained_models/MagicAnimate"

aria2c --console-log-level=error -c -x 16 -s 16 -k 1M "${BASE_URL}/densepose_controlnet/diffusion_pytorch_model.safetensors" -d "${BaseModelDir}/densepose_controlnet" -o "diffusion_pytorch_model.safetensors"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M "${BASE_URL}/densepose_controlnet/config.json" -d "${BaseModelDir}/densepose_controlnet" -o "config.json"

aria2c --console-log-level=error -c -x 16 -s 16 -k 1M "${BASE_URL}/appearance_encoder/diffusion_pytorch_model.safetensors" -d "${BaseModelDir}/appearance_encoder" -o "diffusion_pytorch_model.safetensors"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M "${BASE_URL}/appearance_encoder/config.json?download=true" -d "${BaseModelDir}/appearance_encoder" -o "config.json"

aria2c --console-log-level=error -c -x 16 -s 16 -k 1M "${BASE_URL}/temporal_attention/temporal_attention.ckpt" -d "${BaseModelDir}/temporal_attention" -o "temporal_attention.ckpt"
