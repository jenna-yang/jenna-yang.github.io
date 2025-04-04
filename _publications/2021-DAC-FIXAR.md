---
title: "FIXAR: A Fixed-Point Deep Reinforcement Learning Platform with Quantization-Aware Training and Adaptive Parallelism"
collection: publications
category: conferences # manuscripts
permalink: /publication/2021-DAC-FIXAR
excerpt: 'Je Yang, Seongmin Hong, and Joo-Young Kim'
date: 2021-12-05
venue: 'ACM/IEEE Design Automation Conference (DAC)'
paperurl: 'http://jenna-yang.github.io/files/2021 DAC Paper.pdf'
tags: [ReinforcementLearning, Quantization, FPGA]
# paperurl: 'http://academicpages.github.io/files/paper1.pdf'
# bibtexurl: 'http://academicpages.github.io/files/bibtex1.bib'
# citation: 'Your Name, You. (2009). &quot;Paper Title Number 1.&quot; <i>Journal 1</i>. 1(1).'
---
Deep reinforcement learning (DRL) is a powerful technology to deal with decision-making problem in various application domains such as robotics and gaming, by allowing an agent to learn its action policy in an environment to maximize a cumulative reward. Unlike supervised models which actively use data quantization, DRL still uses the single-precision floating-point for training accuracy while it suffers from computationally intensive deep neural network (DNN) computations. 

In this paper, we present a deep reinforcement learning acceleration platform named **FIXAR**, which employs fixed-point data types and arithmetic units for the first time using a SW/HW co-design approach. We propose a quantization-aware training algorithm in fixed-point, which enables to reduce the data precision by half after a certain amount of training time without losing accuracy. We also design a FPGA accelerator that employs adaptive dataflow and parallelism to handle both inference and training operations. Its processing element has configurable datapath to efficiently support the proposed quantized-aware training. We validate our FIXAR platform, where the host CPU emulates the DRL environment and the FPGA accelerates the agent’s DNN operations, by running multiple benchmarks in continuous action spaces based on a latest DRL algorithm called DDPG. 

Finally, the FIXAR platform achieves 25293.3 inferences per second (IPS) training throughput, which is 2.7 times higher than the CPU-GPU platform. In addition, its FPGA accelerator shows 53826.8 IPS and 2638.0 IPS/W energy efficiency, which are 5.5 times higher and 15.4 times more energy efficient than those of GPU, respectively. FIXAR also shows the best IPS throughput and energy efficiency among other state-of-the-art acceleration platforms using FPGA, even it targets one of the most complex DNN models.