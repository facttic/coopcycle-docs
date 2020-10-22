# CoopCycle Docs Repo

This site is built using [Jekyll](https://jekyllrb.com/) and hosted on [GitHub Pages](https://pages.github.com/).

## Environment

### Local

Install Jekyll and project dependencies:
```
gem install bundler jekyll
bundle install
```

Serve it locally:
```
bundle exec jekyll serve --safe
```

Build Static Site:
```
bundle exec jekyll build
```

Update dependencies:
> Note: it modifies Gemfile.lock
```
bundle exec jekyll update
```

### Docker

Serve it and browse to it: [Open](http://localhost:4000)
```shell
make serve
```

Build Static site:
```
make update
```

Update dependencies:
> Note: it modifies Gemfile.lock
```
make update
```

## Documentation

The URLs will map the folder tree (they are not configured with a `.yml` file).
