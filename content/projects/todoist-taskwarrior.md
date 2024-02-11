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

I used [Todoist][todoist] for a long time and it is a really great productivity app. But
after trying [Taskwarrior][taskwarrior], I knew I wanted to switch. I enjoy using and
building CLI tools, so I decided to build a tool to migrate all my tasks from Todoist into
Taskwarrior.

<!--more-->

The CLI is built using [Click][click], and from there it basically just loops over all the
Todoist tasks retrieved using the [todoist-python][todoist-python] library. There is a bit
of Click-based logic to allow the user to perform several actions against the tasks before
migrating them. Finally, it adds task to the local Taskwarrior database using the
[taskw][taskw] library.

Here is an example:

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
[taskwarrior]: https://taskwarrior.org/
[todoist-python]: https://todoist-python.readthedocs.io/en/latest/
[taskw]: https://github.com/ralphbean/taskw
[click]: https://github.com/pallets/click
