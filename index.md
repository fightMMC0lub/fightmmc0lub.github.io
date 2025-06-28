---
layout: default
title: Home
---

# 👋 Welcome to My Learning Journal

This is where I post my daily discoveries in Linux, OS, and cybersecurity.

## 📝 Recent Posts

<ul>
{% for post in site.posts limit:5 %}
  <li><a href="{{ post.url }}">{{ post.title }}</a> — {{ post.date | date: "%B %d, %Y" }}</li>
{% endfor %}
</ul>
