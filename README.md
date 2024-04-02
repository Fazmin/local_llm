# Running LLMs Locally with Llamafile: A Single Bash Script Guide

## Quick Setup Guide
> Follow these instructions to quickly get started.
- Please download the following files from the [documentation page](https://github.com/Mozilla-Ocho/llamafile?tab=readme-ov-file#other-example-llamafiles) and place them in the specified directory:
  - [mistral-7b-instruct-v0.1-Q4_K_M-main.llamafile](https://huggingface.co/jartine/mistral-7b.llamafile/resolve/main/mistral-7b-instruct-v0.1-Q4_K_M-main.llamafile?download=true)
  - [mistral-7b-instruct-v0.1-Q4_K_M-server.llamafile](https://huggingface.co/jartine/mistral-7b.llamafile/resolve/main/mistral-7b-instruct-v0.1-Q4_K_M-server.llamafile?download=true)
- Execute the commands listed below.

## Command Instructions
> Execute these commands from the current directory.
- To run a prompt on mistral-7b without logging:
  - `./mistral-7b-instruct-v0.1-Q4_K_M-main.llamafile -p "list 5 pros and cons of python" --log-disable`
- To start the self-contained web server UI for mistral-7b:
  - `./mistral-7b-instruct-v0.1-Q4_K_M-server.llamafile`
- To execute wizard coder:
  - `./wizardcoder-python-13b-main.llamafile`

## Reusable Bash Function (`local_llm.sh:local_llm()`)
- Try out the `local_llm()` function by sourcing `local_llm.sh`.
- Sample commands include:
  - `llocal_llm "Name three scientists who have made significant contributions to the field of chemistry." mistral 0.5`
- Integrate the `local_llm` function into your `.bashrc`, `.zshrc`, or `.bash_profile`.
- You can now utilize the `local_llm()` function from anywhere in your terminal.

## Additional Resources
- Llamafile code repository:
    - [https://github.com/Mozilla-Ocho/llamafile/tree/0.3](https://github.com/Mozilla-Ocho/llamafile/tree/0.3)
- Introduction to Llamafile:
    - [https://hacks.mozilla.org/2023/11/introducing-llamafile/](https://hacks.mozilla.org/2023/11/introducing-llamafile/)
