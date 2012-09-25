---
layout: default
title: Devo
---
The official website for the Edward Devotion School ("Devo") is http://devotionschool.org and there is [a website for Devo maintained by the Town of Brookline][town-site] and even a page on [Wikipedia](http://en.wikipedia.org/wiki/Edward_Devotion_School), but this "devo" area of http://coolcorn.github.com is made by a parent of a Devo student.

This site features information about [Extended Day](extended-day), which is technically known as the Devotion Primary Extended Day Program (DPEDP).

It also covers the upcoming [renovation](renovation) of the school building.

Other topics will be added, no doubt.  A list of [recent changes][] is available.

<ul class="posts">
{% for post in site.posts %}
<li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}
</ul>

[town-site]: http://www.brookline.k12.ma.us/index.php?option=com_content&view=article&id=113&Itemid=155

[recent changes]: https://github.com/coolcorn/devo/commits/gh-pages
