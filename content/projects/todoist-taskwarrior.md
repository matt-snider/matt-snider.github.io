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

I think [Todoist][todoist] is a fantastic productivity app, but I also try to use as many open-source & self-hosted tools as possible. This led me to build a tool to migrate all my tasks from Todoist into Taskwarrior. 

<!--more-->

It meets those criteria and is also usable as a CLI, [TUI][tui] (see [vit][vit], [tasknc][tasknc]), and on Android (see [Taskwarrior Android](taskwarriorandroid), [Mirakel][mirakel]). I also own and have access to _all_ my data. On Todoist I couldn't access my completed tasks, comment on tasks, or set tags, and many other operations. I have a free account so I don't blame them of course. Keep in mind that none of the clients are _nearly_ as nice looking or user-friendly as Todoist, but Taskwarrior has so far been working out very well for me.

The tool is written in Python 3.x and is a [Click][click]-based CLI. It uses the [todoist-python][todoist-python] library to access the [Todoist Sync API][todoist-sync-api]. To interface with the local Taskwarrior it uses [taskw][taskw]. It can migrate all tasks at once, or iterate through them in an interactive manner prompting the user to modify, skip, etc for each task.

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
