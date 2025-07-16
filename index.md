---
layout: default
title: Home
---

<style>
  body, html {
    margin: 0;
    padding: 0;
    height: 100%;
    background: black;
    font-family: 'Courier New', Courier, monospace;
    color: #00ffcc;
    overflow-x: hidden;
  }

  .terminal-bg {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: -1;
    overflow: hidden;
    pointer-events: none;
  }

  .scroll-text {
    white-space: pre;
    animation: scroll 30s linear infinite;
    font-size: 13px;
    opacity: 0.15;
    line-height: 1.2em;
  }

  @keyframes scroll {
    0% { transform: translateY(100%); }
    100% { transform: translateY(-100%); }
  }

  .welcome-banner {
    color: #00ffcc;
    font-size: 20px;
    margin: 1rem;
    animation: flicker 2s infinite;
  }

  @keyframes flicker {
    0%, 100% { opacity: 1; }
    50% { opacity: 0.6; }
  }

  ul.notes-list {
    list-style: none;
    padding-left: 0;
    background-color: rgba(0, 0, 0, 0.8);
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
    background-color: #111;
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


<div class="welcome-banner">
  |-- System online. Select a note --|
</div>

<ul class="notes-list">
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">|--{{ post.title }}</a>
      <span class="year">{{ post.date | date: "%Y" }}</span>
    </li>
  {% endfor %}
</ul>


