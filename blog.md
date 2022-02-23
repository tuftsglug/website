---
layout: default
---

# Blog

Anyone part of the group is welcome to write up a blog post on any topic involving Linux or free software. Ask on the Discord how to get involved if you're interested!

{% assign y = 3000 %}

{% for ev in site.posts %}

{% if ev.layout == "blog" %}

<!-- add 0 to convert from string to int -->
{% assign cy = ev.date | date: "%Y" | plus: 0 %}

{% if cy < y %}
## {{ cy }}
{% assign y = cy %}
{% endif %}

[{{ev.title}}]({{ev.url | relative_url}}) - {{ev.date | date: "%b %d, %Y"}}


{% endif %}

{% endfor %}
