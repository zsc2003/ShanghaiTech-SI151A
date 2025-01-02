## Environment setup
```bash
git clone https://github.com/taishan1994/Llama3.1-Finetuning.git
cd Llama3.1-Finetuning
conda create -n SI151A python=3.10
conda activate SI151A
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
pip install -r requirements.txt

# if transformers has version error:
pip install transformers==4.25.1

# download llama3-8B-Instruct model weights
python ./model_hub/download_modelscope.py

# fix deepspeed erorr when finetuning
export TORCH_CUDA_ARCH_LIST="8.0"
git clone https://github.com/microsoft/DeepSpeed.git
cd DeepSpeed
DS_BUILD_FUSED_ADAM=1 pip3 install .
```


## Dataset Pre-processing
```bash
python process_data.py
```


## Fine-tuning
```bash
bash fintune_qlora_llama3_8B_chat.sh
```


## Inference
```bash
python ./predict/llama3.2_full_predict.py
python llama3_peft_qlora_predict.py
```


## Reference
```
https://github.com/taishan1994/Llama3.1-Finetuning
https://github.com/nl4opt/nl4opt-competition
https://github.com/nl4opt/nl4opt-subtask2-baseline
```