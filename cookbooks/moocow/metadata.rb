maintainer       "YOUR_COMPANY_NAME"
maintainer_email "YOUR_EMAIL"
license          "All rights reserved"
description      "Installs/Configures moocow"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

depends          "bluepill"
supports         "ubuntu"
supports         "centos"
supports         "redhat"
supports         "fedora"
supports         "debian"

attribute 'app/root_dir',
:display_name => "Webapp root directory",
:description => "Where the webapp will be deployed in the filesystem",
:type => "string",
:required => "recommended",
:recipes => ["passenger"],
:default => "/opt/application"

