---
layout: default
title: Home
---

# 👋 Welcome to My Learning Journal

This is where I document what I learn daily about Linux, networking, cybersecurity, and tech in general.

## 📝 Recent Notes

<ul>
  {% for post in site.posts limit:5 %}
    <li><a href="{{ post.url }}">{{ post.title }}</a> — {{ post.date | date: "%B %d, %Y" }}</li>
  {% endfor %}
</ul>
