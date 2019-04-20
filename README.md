# Personal Profile

This is the source code for my [Hugo](https://gohugo.io)-based personal profile site.

## Development

Development happens on the `source` branch, and the Hugo compiled code is pushed to the `master` branch since Github requires it for user/org pages.


Run the development server with:
```sh
$ hugo server
```

There are several types of content entries that can be created:

* Project description
    * `hugo new projects/my-new-project.md`
* Job description
    * `hugo new work/my-new-job.md`

Be sure to fill out all fields in the front matter!

## Building

To setup the repository for the first time, ensure the `public/` folder is setup as a git worktree of `master` (while on the `source` branch):

```sh
$ git worktree add public master
```

After that, any time the current directory is `public/` commits will be made to the `master` branch. Code deployed there will be served at the github.io page.

Simply run the `publish.sh` script to deploy.

