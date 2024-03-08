@echo off

set PYTHON=
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=--no-gradio-queu

@REM Uncomment following code to reference an existing A1111 checkout.
set A1111_HOME=E:/SD_CommonFiles
@REM
set VENV_DIR=%A1111_HOME%/venv
set COMMANDLINE_ARGS=%COMMANDLINE_ARGS% ^
--ckpt-dir %A1111_HOME%/Stable-diffusion ^
--hypernetwork-dir %A1111_HOME%/hypernetworks ^
--embeddings-dir %A1111_HOME%/embeddings ^
--lora-dir %A1111_HOME%/Lora

call webui.bat
