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

I think [Todoist][todoist] is a fantastic productivity app, but I have recently been trying to transition to as mnay open-source & self-hosted tools as possible. This led me to build a tool to migrate all my tasks from Todoist into Taskwarrior.

<!--more-->

Taskwarrior is great! It's open source, and self-hostable (taskserver/taskd). There's a CLI, [TUI][tui] (see [vit][vit], [tasknc][tasknc]), and an Android app (see [Taskwarrior Android](taskwarriorandroid), [Mirakel][mirakel]).

On Todoist I couldn't access my completed tasks, comment on tasks, or set tags, as well as many other operations. I understand the need to monetize a product that they've worked hard and done a great job on - I only had a free account, and this isn't a complaint! But, with Taskwarrior I own and have access to _all_ my data and all features of the tool. A downside is that the UX isn't as good as Todoist.

I wrote CLI a tool to migrate my data in Python 3.x using [Click][click]. It uses the [todoist-python][todoist-python] library to access the [Todoist Sync API][todoist-sync-api]. To interface with the local Taskwarrior it uses [taskw][taskw]. It can migrate all tasks at once, or iterate through them in an interactive manner prompting the user to modify, skip, etc for each task.

For example:

```sh
$ python -m todoist_taskwarrior.cli migrate --interactive
Interactively add tasks

y - add task
n - skip task
d - change description
P - change project
p - change priority
t - change tags
r - change recur
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
[todoist-sync-api]: https://developer.todoist.com/sync
[todoist-python]: https://todoist-python.readthedocs.io/en/latest/
[taskw]: https://github.com/ralphbean/taskw
[click]: https://github.com/pallets/click
[tui]: https://en.wikipedia.org/wiki/Text-based_user_interface
[vit]: https://github.com/scottkosty/vit
[tasknc]: https://github.com/lharding/tasknc
[taskwarriorandroid]: https://bitbucket.org/kvorobyev/taskwarriorandroid/wiki/Configuration
[mirakel]: https://github.com/MirakelX/mirakel-android
