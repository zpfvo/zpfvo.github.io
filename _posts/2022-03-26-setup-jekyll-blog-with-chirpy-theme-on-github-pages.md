---
layout: post
title: Setup Jekyll Blog with Chirpy theme on GitHub Pages
date: 2022-03-26 13:48 +0100
category: HowTo
tags:
    - Jekyll
    - HowTo
---
> Steps to reproduce this blog, for me to remember and for your enjoyment. It is hosted on free public GitHub repository. You need no server and it is completely free.
The domain of the blog will be `<gh-username>.github.io`
{: .prompt-tip }

# Create repository and configure blog
## Setup repository
1. Repository name will be `<gh-username>.github.io`
2. Use [github.com/cotes2020/chirpy-starter/generate](https://github.com/cotes2020/chirpy-starter/generate) create repository
3. Checkout repo with 
```
git clone git@github.com:<gh-username>/<gh-username>.github.io.git
```
4. Run `bundle install` in the folder to install the environment.

## Configure blog in `_config.yml`
The config template is pretty well annotated with comments and easy to fill out, but there is one pitfall

> Don't fill out baseurl. Leave it to `''`
{: .prompt-warning }

```yaml
# Change the following value to '/PROJECT_NAME' ONLY IF your site type is GitHub Pages Project sites
# and doesn't have a custom domain.
baseurl: ''
```
Since we are using GitHub Pages I thought I need to fill this out. This is not the case.

## Configure GitHub repository to build and publish the blog
Now, when you push the changes to the repository, the blog should be build with GitHub actions.

The build output will be pushed to a branch called `gh-pages`.

Now on your GitHub repository, you have to go to
`Settings -> Pages` and select
- Branch `gh-pages`
- Folder `/`

# Create first post with jekyll-compose
> To make it easier to create new posts, wie can use the gem `jekyll-compose`
{: .prompt-tip }

1. Install `jekyll-compose`

    Run `bundle add jekyll-compose`

2. Create new post

    Run `bundle exec jekyll post "<TITLE>"`

This will create a file in `_posts/YYYY-MM-DD-<TITEL>.md` with the corresponding front matter:
```yaml
---
layout: post
title: <TITEL>
date: <DATETIME>
---
```

# Enable Giscus comments
1. Enable [Giscus app](https://github.com/apps/giscus)
2. Enable Giscus in repository: [Enabling or disabling GitHub discussions for a repository](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/enabling-features-for-your-repository/enabling-or-disabling-github-discussions-for-a-repository)
3. Setup Giscus in _config.yml

    1. Go to [giscus.app](https://giscus.app/) and create the configuration for your repository

    2. Copy the corresponding values from the generated `<script src=...>` to _config.yml

        ```diff
        +++ b/_config.yml
        -  active:         # The global switch for posts comments, e.g., 'disqus'.  Keep it empty means disable
        +  active: giscus # The global switch for posts comments, e.g., 'disqus'.  Keep it empty means disable

        giscus:
        -    repo:             # <gh-username>/<repo>
        -    repo_id:
        -    category:
        -    category_id:
        +    repo: <gh-username>/<gh-username>.github.io # <gh-username>/<repo>
        +    repo_id: <repo-id>
        +    category: <category>
        +    category_id: <category-id>
        ```
