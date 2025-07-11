---
layout: default
title: Home
---

<ul>
  {% for post in site.posts limit:5 %}
    <li><a href="{{ post.url }}">{{ post.title }}</a> — {{ post.date | date: "%Y" }}</li>
  {% endfor %}
</ul>







