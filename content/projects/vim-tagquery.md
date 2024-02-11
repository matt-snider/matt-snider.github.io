---
title: "Vim TagQuery"
weight: 50

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

I use [VimWiki][vimwiki] daily for my notes and journal. I tag my notes extensively, but
found that the built-in tag search in Vim and VimWiki were too basic, supporting only
searches like "find all entries with the tag `work`". I wanted to be able to do something
like "find all entries with the tag `work` and `python` but not `flask`". I also was very
interested in Rust at the time, so I wanted to build something using it and get to know
the language better.

<!--more-->

I decided to first build a CLI program in Rust called [ctags-query][ctags-query], that
could parse tags from my notes, store them according to the [CTAGS spec][ctags-file-spec],
and then query them with a simple query syntax. I built the parser in plain Rust without
using any external libraries which was a pretty interesting aspect of this project.

```
$ ctags-query 'work & python & parsing'
path/to/fileX:10
path/to/fileY:50
path/to/fileZ:165

$ ctags-query 'work & python & parsing'
path/to/fileX:22
path/to/fileY:90
```

After that I integrated it into Vim as a Vimscript plugin in the
[vim-tagquery][vim-tagquery] project and gave it a basic [FZF][fzf]-based search
interface. Now it was possible to interactively query by tags within Vim!

[vimwiki]: https://github.com/vimwiki/vimwiki
[ctags-query]: https://github.com/matt-snider/ctags-query
[vim-tagquery]: https://github.com/matt-snider/ctags-query
[ctags-file-spec]: http://ctags.sourceforge.net/ctags.html#TAG%20FILE%20FORMAT
[fzf]: https://github.com/junegunn/fzf
