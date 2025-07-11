---
layout: default
title: Home
---

<style>
  /* Matrix Background */
  body, html {
    margin: 0;
    padding: 0;
    height: 100%;
    overflow-x: hidden;
    background: black;
    font-family: 'Courier New', Courier, monospace;
  }

  canvas#matrix {
    position: fixed;
    top: 0;
    left: 0;
    z-index: -1;
  }

  .welcome-banner {
    color: #00ffcc;
    font-size: 20px;
    margin: 1rem;
    animation: flicker 2s infinite;
  }

  @keyframes flicker {
    0% { opacity: 1; }
    50% { opacity: 0.7; }
    100% { opacity: 1; }
  }

  ul.notes-list {
    list-style: none;
    padding-left: 0;
    font-family: 'Courier New', Courier, monospace;
    color: #00ffcc;
    padding: 1rem;
    border-radius: 8px;
    background-color: rgba(0, 0, 0, 0.7);
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

<!-- Matrix Canvas Background -->
<canvas id="matrix"></canvas>

<!-- Custom Hacker Welcome Message -->
<div class="welcome-banner">
  |-- Welcome back, Operative. Initializing system... |
</div>

<!-- Notes List -->
<ul class="notes-list">
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">|--{{ post.title }}</a>
      <span class="year">{{ post.date | date: "%Y" }}</span>
    </li>
  {% endfor %}
</ul>

<div class="links">
  <a href="/archive/">Archive</a>
  <a href="/tags/">Tags</a>
</div>


<script>
  const canvas = document.getElementById("matrix");
  const ctx = canvas.getContext("2d");

  canvas.height = window.innerHeight;
  canvas.width = window.innerWidth;

  const letters = "01F0U4D4 0xTECHWORLD WELCOME BACK INITIALIZING SYSTEM ...".split("");
  const fontSize = 14;
  const columns = canvas.width / fontSize;

  const drops = Array(Math.floor(columns)).fill(1);

  function drawMatrix() {
    ctx.fillStyle = "rgba(0, 0, 0, 0.05)";
    ctx.fillRect(0, 0, canvas.width, canvas.height);
    ctx.fillStyle = "#0f0";
    ctx.font = fontSize + "px monospace";

    for (let i = 0; i < drops.length; i++) {
      const text = letters[Math.floor(Math.random() * letters.length)];
      ctx.fillText(text, i * fontSize, drops[i] * fontSize);
      if (drops[i] * fontSize > canvas.height || Math.random() > 0.975) {
        drops[i] = 0;
      }
      drops[i]++;
    }
  }

  setInterval(drawMatrix, 50);
</script>
