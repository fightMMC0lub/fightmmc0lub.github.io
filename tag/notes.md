---
layout: default
title: Notes
---

# General Notes


{% for post in site.posts %}
  {% if post.tags contains "notes" %}
    - [{{ post.title }}]({{ post.url }}) - {{ post.date | date: "%Y-%m-%d" }}
  {% endif %}
{% endfor %}

