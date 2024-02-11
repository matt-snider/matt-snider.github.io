---
title: "dict.cc CLI Client"
weight: 50

links:
    - title: GitHub
      href: https://github.com/matt-snider/dict.cc

tags:
    - Haskell
    - CLI
---

While learning German, I found that frequently looking up translations on
[dict.cc][dict.cc] was slow - open the browser, type in the URL, wait for it to load, type
in the search, etc. Being able to do this in the terminal sped things up. I also wanted to
improve my knowledge of Haskell and this was a good first project.

<!--more-->

Here's an example of using the tool:

```sh
$ dict-cc dictionary

Englisch                                                      Deutsch
===========                                                ==========
ling. publ. dictionary                        Wörterbuch {n} [1324 ✓]
dictionary                                         Lexikon {n} [70 ✓]
dictionary                        Diktionär {n} {m} [veraltet] [66 ✓]
```

[dict.cc]: https://www.dict.cc/
