---
layout: default
title: Home
---

<style>
  ul.notes-list {
    list-style: none;
    padding-left: 0;
    font-family: 'Courier New', Courier, monospace;
    color: #00ffcc;
    background-color: #000000;
    padding: 1rem;
    border-radius: 8px;
    box-shadow: 0 0 10px #00ffcc40;
  }

  ul.notes-list li {
    margin: 0.5em 0;
  }

  ul.notes-list a {
    text-decoration: none;
    color: #00ffff;
    border-left: 3px solid #00ffff;
    padding-left: 10px;
    transition: all 0.2s ease-in-out;
  }

  ul.notes-list a:hover {
    color: #ff00cc;
    border-left-color: #ff00cc;
  }

  span.year {
    background-color: #111111;
    color: #ff0099;
    padding: 0.2em 0.6em;
    border-radius: 4px;
    font-weight: bold;
    margin-left: 1em;
    box-shadow: 0 0 5px #ff009950;
  }

  .links {
    margin-top: 20px;
  }

  .links a {
    color: #999;
    margin-right: 20px;
    font-size: 14px;
    text-decoration: underline;
  }

  .links a:hover {
    color: #ff00cc;
  }
</style>

<ul class="notes-list">
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">|--{{ post.title }}</a>
      <span class="year">{{ post.date | date: "%Y" }}</span>
    </li>
  {% endfor %}
</ul>
