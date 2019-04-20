---
title: "Todoist Taskwarrior"
weight: 10

links:
    - title: GitHub
      href: https://github.com/matt-snider/todoist-taskwarrior

tags: 
    - Python
    - Taskwarrior
    - Todoist
    - CLI
---

I'm a big fan of [Todoist][todoist] for managing my productivity, but I also feel strongly about using open-source and self-hosted tools, where you own your own data. This led me to build a tool to migrate all my tasks from Todoist into Taskwarrior.

<!--more-->

The tool is written in Python 3.x and is a [Click][click]-based CLI. It can migrate all tasks at once, or iterate through them prompting the user to modify, skip, etc, along the way.

For example:

```sh
$ python -m todoist_taskwarrior.cli migrate --interactive
Interactively add tasks

y - add task
n - skip task
r - rename task
p - change priority
t - change tags
q - quit immediately
? - print help

Task 1 of 315: Work on an open source project

tid: 142424242
name: Work on an open source project
project: Open Source
priority:
tags:
entry: 2019-01-18T12:00:00+00:00
due: 2019-01-21T17:00:00+00:00
recur: 3 days

Import this task? (y, n, r, t, p, q, ?):
```

[todoist]: https://todoist.com/
[click]: https://github.com/pallets/click
