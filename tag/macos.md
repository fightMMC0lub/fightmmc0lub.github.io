---
layout: default
title: Macos
---

# 📝 Posts tagged with "Macos"


{% for post in site.posts %}
  {% if post.tags contains "macos" %}
    - [{{ post.title }}]({{ post.url }}) - {{ post.date | date: "%Y-%m-%d" }}
  {% endif %}
{% endfor %}

