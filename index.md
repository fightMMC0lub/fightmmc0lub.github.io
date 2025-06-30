---
layout: default
title: Home
---

<ul>
  {% for post in site.posts limit:5 %}
    <li><a href="{{ post.url }}">{{ post.title }}</a> — {{ post.date | date: "%B %d, %Y" }}</li>
  {% endfor %}
</ul>

<a href="/archive.html">🔗 View all notes</a><br>
<a href="/tags.html">🏷 Browse by Tags</a>
