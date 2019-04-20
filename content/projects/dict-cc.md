---
title: "dict.cc CLI Client"
weight: 100

links:
    - title: GitHub
      href: https://github.com/matt-snider/dict.cc

tags: 
    - Haskell
    - CLI
---

I started this project while learning German so I was using [dict.cc][dict.cc] an awful lot. Being able to run lookups from the terminal instead of having to navigate to the webpage each time was a big boon. I also wanted to improve my knowledge of Haskell so this was a good starting project.

<!--more-->

Here's an example

```sh
$ dict-cc dictionary

Englisch                                                      Deutsch
===========                                                ==========
ling. publ. dictionary                        Wörterbuch {n} [1324 ✓]
dictionary                                         Lexikon {n} [70 ✓]
dictionary                        Diktionär {n} {m} [veraltet] [66 ✓]
```


If I were to start again, I would base it on the [DICT dictionary network protocol][dict-protocol-wk] and then add other backends from there as necessary (e.g. dict.cc, Linguee, Leo). Maybe at some point I will refactor it. 


[dict.cc]: https://www.dict.cc/
[dict-protocol-wk]: https://en.wikipedia.org/wiki/DICT
