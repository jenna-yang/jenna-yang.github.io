---
title: "LearningGroup: A Real-Time Sparse Training on FPGA via Learnable Weight Grouping for Multi-Agent Reinforcement Learning"
collection: publications
category: conferences # manuscripts
permalink: /publication/2022-FPT-LearningGroup
excerpt: 'Je Yang, JaeUk Kim, and Joo-Young Kim'
date: 2022-12-05
venue: 'IEEE International Conference on Field Programmable Technology (ICFPT)'
paperurl: 'http://jenna-yang.github.io/files/2022-ICFPT-Paper.pdf'
tags:
  - ReinforcementLearning
  - Pruning
  - FPGA
# paperurl: 'http://academicpages.github.io/files/paper1.pdf'
# bibtexurl: 'http://academicpages.github.io/files/bibtex1.bib'
# citation: 'Your Name, You. (2009). &quot;Paper Title Number 1.&quot; <i>Journal 1</i>. 1(1).'
---
Multi-agent reinforcement learning (MARL) is a powerful technology to construct interactive artificial intelligent systems in various applications such as multi-robot control and self-driving cars. Unlike supervised model or single-agent rein-forcement learning, which actively exploits network pruning, it is obscure that how pruning will work in multi-agent reinforcement learning with its cooperative and interactive characteristics. 

In this paper, we present a real-time sparse training accel-eration system named **LearningGroup**, which adopts network pruning on the training of MARL for the first time with an algorithm/architecture co-design approach. We create spar-sity using a weight grouping algorithm and propose on-chip sparse data encoding loop (OSEL) that enables fast encoding with efficient implementation. Based on the OSEL's encoding format, LearningGroup performs efficient weight compression and computation workload allocation to multiple cores, where each core handles multiple sparse rows of the weight matrix simultaneously with vector processing units. As a result, LearningGroup system minimizes the cycle time and memory footprint for sparse data generation up to 5.72x and 6.81x. Its FPGA accelerator shows 257.40-3629.48 GFLOPS throughput and 7.10-100.12 GFLOPS/W energy efficiency for various conditions in MARL, which are 7.13x higher and 12.43x more energy efficient than Nvidia Titan RTX GPU, thanks to the fully on-chip training and highly optimized dataflow/data format provided by FPGA. Most importantly, the accelerator shows speedup up to 12.52 x for processing sparse data over the dense case, which is the highest among state-of-the-art sparse training accelerators.