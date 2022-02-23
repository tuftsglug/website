---
layout: default
---

# Events

Outside of these events, we have a meeting at least once a month to discuss upcoming events, work on projects, and talk about free software!

{% assign y = 3000 %}

{% for ev in site.posts %}

{% if ev.layout == "event" %}

<!-- add 0 to convert from string to int -->
{% assign cy = ev.evdate | date: "%Y" | plus: 0 %}

{% if cy < y %}
## {{ cy }}
{% assign y = cy %}
{% endif %}

[{{ev.title}}]({{ev.url | relative_url}}) - {{ev.evdate | date: "%b %d, %Y"}} @ {{ev.evlocation}}

{% endif %}

{% endfor %}