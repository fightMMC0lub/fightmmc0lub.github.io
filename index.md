---
layout: default
title: Home
---

<ul>
  {% for post in site.posts limit:5 %}
    <li><a href="{{ post.url }}">{{ post.title }}</a> — {{ post.date | date: "%B %d, %Y" }}</li>
  {% endfor %}
</ul>

<a href="/archive/">Archive</a>
<a href="/tags/">Tags</a>
<a href="/tags/">HowamI</a>




