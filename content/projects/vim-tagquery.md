---
title: "Vim TagQuery"
weight: 10

links:
    - title: GitHub (ctags-query)
      href: https://github.com/matt-snider/ctags-query
    - title: GitHub (vim-tagquery)
      href: https://github.com/matt-snider/vim-tagquery

tags: 
    - Rust
    - Vim
    - VimWiki
    - CLI
---

I use [VimWiki][vimwiki] _a lot_ in my daily life as my [personal knowledge base/wiki][pkb] and journal. I tag my notes extensively but found the built-in tag search in Vim and VimWiki seriously lacking. 

<!--more-->

It only supports simple searches like:

> find all entries that have the tag `xyz`

But what I wanted, was something like:

> find all entries with the tag `work` AND `python` AND `parsing`

So I decided to first build a CLI program in Rust, [ctags-query][ctags-query], that could parse and store [ctags files][ctags-file-format] in a way that would allow querying. It  was now possible to build a simple query interpreter to do exactly what I wanted:

```
$ ctags-query 'work & python & parsing'
path/to/fileX:10
path/to/fileY:50
path/to/fileZ:165

$ ctags-query 'work & python & parsing'
path/to/fileX:22
path/to/fileY:90
```

Integrating it into Vim as a plugin just required building a basic Vimscript layer on top of the Rust CLI tool, which is the code that lives in the [vim-tagquery][vim-tagquery] repository. I gave it a basic [FZF][fzf]-based search interface.


[vimwiki]: https://github.com/vimwiki/vimwiki
[pkb]: https://en.wikipedia.org/wiki/Personal_knowledge_base
[ctags-query]: https://github.com/matt-snider/ctags-query
[vim-tagquery]: https://github.com/matt-snider/ctags-query
[ctags-file-spec]: http://ctags.sourceforge.net/ctags.html#TAG%20FILE%20FORMAT
[fzf]: http://ctags.sourceforge.net/ctags.html#TAG%20FILE%20FORMAT
