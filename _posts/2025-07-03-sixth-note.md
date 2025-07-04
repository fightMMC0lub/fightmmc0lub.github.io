---
layout: default
title: "|--Promptless"
date: 2025-07-03 
tags: [AI, linux, windows, macos, ollama]
---

# Dolphin AI - Local Setup Guide

## ⚠️ Notice
This guide is solely meant for **educational purposes**. It is your responsibility how you use this information—use AI sensibly.

## Why Use Dolphin AI?

Dolphin Uncensored is a modified AI model that removes standard content restrictions, allowing for unfiltered responses.  
For those not comfortable with a local setup, **Venice AI** (Premium Plan required) offers a cloud-based alternative.

## System Requirements

Before starting, ensure your system meets the requirements.

### Minimum Specifications:
- **CPU:** AMD Ryzen 5 or Intel i5 (6th Gen or newer)  
- **RAM:** 16GB DDR4  
- **GPU:** NVIDIA GTX 1660 or RTX 2060 (6GB VRAM)  
- **Storage:** SSD with at least 50GB of free space  
- **Operating System:** Linux, macOS, or Windows 10/11  

### Recommended Specifications:
- **CPU:** AMD Ryzen 9 or Intel i7 (10th Gen or newer)  
- **RAM:** 32GB+ DDR4/DDR5  
- **GPU:** AMD 7900XTX (24GB+ VRAM) or NVIDIA RTX 3090 / 4090  
- **Storage:** NVMe SSD with 100GB+ free space  
- **Operating System:** Latest Linux distros, macOS, or Windows 11

## Model Variants and Hardware Demands

Dolphin AI supports multiple model sizes, each with its own hardware needs:

- **Dolphin-Llama3:8B** → Requires **5GB VRAM**  
  ```bash
  dolphin-llama3 ollama run 3:8b
  ```
- **Dolphin-Llama3:70B** → Requires **40GB VRAM**
 ```bash
dolphin-llama3 ollama run 3:70b
```
- **Notice** *No GPU? You can use CPU instead, but expect slower response times*
## Installation and Setup
- *Ollama* is required to manage *local language models*
   
  Download and install from: [(https://ollama.com)](https://ollama.com)

- *verify*:
  ```bash
  ollama --version
  ```
  ## Download Dolphin AI
  ```bash
  ollama pull dolphin-llama3

  ```
  ## you can run the model by :
  ```bash
  ollama run dolphin-llama3:8b   # For 8B model7
   ```
   ```bash
  ollama run dolphin-llama3:70b  # For 70B model
  ```
## for  a user-friendly interface instead of terminal *Chatbox AI*
- *Download*: [(https://chatboxai.app/en#download)](https://chatboxai.app/en#download)
  
## Install and open the application and Go to Settings > Local LLM, and link it to Ollama
  - You have total control over your AI experience when you run Dolphin AI locally. Self-hosting gives you control over whether you want to use it for learning, research and more hahaha.....
  
  
