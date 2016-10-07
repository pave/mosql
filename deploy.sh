#! /bin/bash

yes | sudo gem uninstall mosql
gem build mosql.gemspec
sudo gem install mosql-0.5.2.gem

