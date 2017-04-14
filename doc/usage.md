- To _enable_ MailHog, add the `install` recipe to the run list of a node:
 
```
$ knife node run list add srv123.typo3.org "recipe[t3-mailhog::install]"
```

so that the run list looks as follows: `recipe[site-xxxtypo3org],recipe[t3-mailhog::install]`.

- To _disable_ MailHog, add the `t3-mailhog::uninstall` recipe instead.
