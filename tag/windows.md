---
layout: default
title: Windows
---

# 🐧 Posts tagged with "Windows"


{% for post in site.posts %}
  {% if post.tags contains "windows" %}
    - [{{ post.title }}]({{ post.url }}) - {{ post.date | date: "%Y-%m-%d" }}
  {% endif %}
{% endfor %}

