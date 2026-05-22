---
layout: page
permalink: /publications/
title: selected publications
nav_title: publications
nav: true
nav_order: 2
description: 'Check the <a href="https://scholar.google.com/citations?user=irqY7W4AAAAJ" target="_blank" rel="noopener">full publications list on Google Scholar</a>.'
---

<div class="publications">

{% bibliography %}

</div>

<script>
  document.addEventListener('DOMContentLoaded', function () {
    document.querySelectorAll('.publications .links a.btn').forEach(function (a) {
      if (a.textContent.trim() === 'HTML') a.textContent = 'PAPER';
    });
  });
</script>
