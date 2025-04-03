---
title: "JNPU: A 1.04TFLOPS Joint-DNN Training Processor with Speculative Quantization and Triple Heterogeneity on Microarchitecture / Precision / Dataflow"
collection: publications
category: conferences # manuscripts
permalink: /publication/2023-ESSCIRC-JNPU
excerpt: 'Je Yang, Sukbin Lim, Sukjin Lee, Jae-Young Kim, and Joo-Young Kim'
date: 2023-09-11
venue: 'IEEE European Solid-State Circuits Conference (ESSCIRC)'
paperurl: 'http://jenna-yang.github.io/files/2023-ESSCIRC-Paper.pdf'
# paperurl: 'http://academicpages.github.io/files/paper1.pdf'
# bibtexurl: 'http://academicpages.github.io/files/bibtex1.bib'
# citation: 'Your Name, You. (2009). &quot;Paper Title Number 1.&quot; <i>Journal 1</i>. 1(1).'
---
This paper presents JNPU, a 1. 04TFLOPS joint-DNN accelerator that can simultaneously run joint-DNN (MobileNet + GoogLeNet) models with 245FPS (inference) and 1. 26TFLOPS/W (training). It proposes speculative cyclic quantization that enables integer-dominant operations and reduces external memory access by 87.5%. Its tangram dataflow mapper provides optimized sets of heterogeneous stationary types for both forward and backward propagation, enhancing efficiency up to 71.6%. Lastly, its novel processing cluster leverages triple heterogeneity on INT8 arrays and FP16 vector processor, saving 56.3% and 26.9% of computing area and power, respectively.