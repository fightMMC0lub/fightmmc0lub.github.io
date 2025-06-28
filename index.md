---
layout: default
title: Home
---

# 📚 if u can read, u can learn....

notes about things I discover.

## 🔥 Recent Posts

<ul>
  {% for post in site.posts limit:5 %}
    <li><a href="{{ post.url }}">{{ post.title }}</a> — {{ post.date | date: "%B %d, %Y" }}</li>
  {% endfor %}
</ul>
