# Rails api experiment

How to:

```shell
$ brew install rbenv ruby-build
$ echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
$ rbenv install 2.2.2
$ cd project_path
$ rbenv local 2.2.2
$ gem install rails-api
$ rails-api new appName
$ cd appNAme
$ gem install bundle
$ bundle install
$ rails g scaffold Stylist name:text email:text password:text
$ rake db:migrate
$ echo "gem 'apipie-rails', :github => 'Apipie/apipie-rails'" >> Gemfile
$ bundle install
$ rails g apipie:install
$ rails s
```
