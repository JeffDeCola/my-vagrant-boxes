# my-vagrant-boxes

[![Maintainability](https://api.codeclimate.com/v1/badges/8b4765d37169a21f7f72/maintainability)](https://codeclimate.com/github/JeffDeCola/my-vagrant-boxes/maintainability)
[![Issue Count](https://codeclimate.com/github/JeffDeCola/my-vagrant-boxes/badges/issue_count.svg)](https://codeclimate.com/github/JeffDeCola/my-vagrant-boxes/issues)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://jeffdecola.mit-license.org)

`my-vagrant-boxes` _is a place for me to use vagrant boxes and create vagrant boxes._

`my-vagrant-boxes`
[GitHub Webpage](https://jeffdecola.github.io/my-vagrant-boxes/).

## VAGRANT BOX LIST

## UPDATE GITHUB WEBPAGE USING CONCOURSE (OPTIONAL)

For fun, I use concourse to update
[my-vagrant-boxes GitHub Webpage](https://jeffdecola.github.io/my-vagrant-boxes/)
and alert me of the changes via repo status and slack.

A pipeline file [pipeline.yml](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/ci/pipeline.yml)
shows the entire ci flow. Visually, it looks like,

![IMAGE - my-vagrant-boxes concourse ci pipeline - IMAGE](docs/pics/my-vagrant-boxes-pipeline.jpg)

The `jobs` and `tasks` are,

* `job-readme-github-pages` runs task
  [readme-github-pages.sh](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/ci/scripts/readme-github-pages.sh).

The concourse `resources types` are,

* `my-vagrant-boxes` uses a resource type
  [docker-image](https://hub.docker.com/r/concourse/git-resource/)
  to PULL a repo from github.
* `resource-slack-alert` uses a resource type
  [docker image](https://hub.docker.com/r/cfcommunity/slack-notification-resource)
  that will notify slack on your progress.
* `resource-repo-status` uses a resource type
  [docker image](https://hub.docker.com/r/dpb587/github-status-resource)
  that will update your git status for that particular commit.

For more information on using concourse for continuous integration,
refer to my cheat sheet on [concourse](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/software/operations-tools/continuous-integration-continuous-deployment/concourse-cheat-sheet).
