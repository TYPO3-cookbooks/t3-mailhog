name             "t3-mailhog"
maintainer       "TYPO3 Server Admin Team"
maintainer_email "cookbooks@typo3.org"
license          "Apache 2.0"
description      "Avoids sending emails"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version          IO.read(File.join(File.dirname(__FILE__), 'VERSION')) rescue '0.0.1'

supports         "debian"

# community cookbooks, pin to patchlevel (= 1.1.1)
depends          "iptables",   "= 2.2.0"
depends          "systemd",    "= 2.1.3"
