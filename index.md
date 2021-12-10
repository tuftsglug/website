---
layout: default
---

## About

GNU/Linux User Group is an (unofficial) group at Tufts University dedicated to all things GNU, Linux, BSD, etc.

## Events

{% for ev in site.posts %}

{% if ev.layout == "event" %}

[{{ev.title}}]({{site.baseurl}}{{ev.url}}) - {{ev.date | date: "%b %d, %Y"}} @ {{ev.location}}

{% endif %}

{% endfor %}
