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


## Resume

A resume for A4 size paper can be generated using the same information listed in the `/about` page. Generally a resume will include contact info that you most likely wouldn't expose online. Such info should be stored in `private.toml` which should not be committed (see `.gitignore`). A sample file is already present in the repository.

Once the private variables are set, run:

```sh
$ hugo --config config.toml,private.toml server
```

Now visit `/resume` and `/de/resume`, and print the PDFs as desired. Currently this works well in Firefox, but other browsers may render it differently.
