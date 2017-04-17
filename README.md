# Description

Installs [MailHog](https://github.com/mailhog/MailHog) and redirects all outgoing port 25 traffic to it. Useful for test servers :-)

[![Build Status master branch](https://chef-ci.typo3.org/job/TYPO3-cookbooks/job/t3-mailhog/branch/master/badge/icon)](https://chef-ci.typo3.org/job/TYPO3-cookbooks/job/t3-mailhog/branch/master/)

# Requirements

## Platform:

* debian

## Cookbooks:

* iptables (= 2.2.0)
* systemd (= 2.1.3)

# Attributes

* `node['mailhog']['version']` - MailHog version (from GitHub release). Defaults to `0.2.1`.
* `node['mailhog']['path']` - Path to MailHog binary. Defaults to `/usr/local/bin/MailHog`.

# Recipes

* [t3-mailhog::install](#t3-mailhoginstall)
* [t3-mailhog::uninstall](#t3-mailhoguninstall)

## t3-mailhog::install

Activates MailHog

## t3-mailhog::uninstall

Deactivates MailHog

Usage
-----

- To _enable_ MailHog, add the `install` recipe to the run list of a node:

```
$ knife node run list add srv123.typo3.org "recipe[t3-mailhog::install]"
```

so that the run list looks as follows: `recipe[site-xxxtypo3org],recipe[t3-mailhog::install]`.

- To _disable_ MailHog, add the `t3-mailhog::uninstall` recipe instead.


# License and Maintainer

Maintainer:: TYPO3 Server Admin Team (<cookbooks@typo3.org>)

License:: Apache 2.0
