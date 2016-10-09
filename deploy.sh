#! /bin/bash

yes | sudo gem uninstall mosql
gem build mosql.gemspec
sudo gem install mosql-0.5.2.gem

mosql -c pave_db.yml --sql 'postgres://localhost/template1' --mongo mongodb://localhost:27017 --only-db pave-dev --reimport --skip-tail -v
