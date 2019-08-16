# Sinatra Boilerplate

[See this code running](http://peaceful-brook-41552.herokuapp.com/)<sup>[1](#footnote1)</sup>

## The problem

You want a simple Ruby web app, quick, right?
Rails too complicated for your needs?
You still want to use a database, and your website to look presentable?

Me too! So I created this boilerplate, with just enough but not too much added in. Different people have different definitions of that; this is mine.

## The solution

This includes the following tools:

- [Sinatra](http://sinatrarb.com/) as the engine
- [Bootstrap](https://getbootstrap.com/) to make the website not ugly
- [ActiveRecord](https://github.com/rails/rails/tree/master/activerecord) to interact with a database

## Features

- Responsive navbar ([source](
https://getbootstrap.com/docs/4.0/examples/navbars/)) including a search box, drop-down menu and will shrink on smaller screens
- Set the HTML `title` attribute on a per-page basis
- Passes all default [rubocop](https://github.com/rubocop-hq/rubocop) cops
- Deployable to [Heroku](https://devcenter.heroku.com/categories/ruby-support) as-is
- Multiple controllers & helpers demonstrated
- Valid, standard-compliant HTML

## Setup instructions

- To get the database running locally, it's recommended by Heroku, & myself, that you install postgres locally. Remember to change the contents of database.yml in accordance with your dev setup. Other database engines are available, like [sqlite](https://rubygems.org/gems/sqlite3/versions/1.3.11).
- Run `bundle install`
- Run `rackup` and your app should be running at `http://localhost:9292`

## What next?

- Develop your database by creating migrations (`bundle exec rake db:create_migration NAME=create_table_name`), these will appear inside db/migrate. Fill the file in as appropriate and run (`rake db:migrate`)
- Read the [Heroku docs](https://devcenter.heroku.com/categories/ruby-support) for more information about deploying such apps to Heroku
- Add more tools if you'd like - such as [SASS](https://stackoverflow.com/questions/4987183/how-to-link-a-sass-file-in-a-sinatra-app/18367901#18367901) or a [different template engine](https://www.ruby-toolbox.com/categories/template_engines) if you don't like erb.
- Code awesome stuff!

## Other sources

I've linked to many of the sources above but I'd also like to mention...

- The [sinatra-bootstrap](https://github.com/bootstrap-ruby/sinatra-bootstrap) repo
- This article on [deploying a simple Sinatra App with Postgres to Heroku](https://medium.com/@dmccoy/deploying-a-simple-sinatra-app-with-postgres-to-heroku-c4a883d3f19e)
- [This post](https://nickcharlton.net/posts/structuring-sinatra-applications.html) helped me organize multiple controllers in a way I was happy with

<a name="footnote1">1</a>: This is hosted on Heroku's free tier. This means that if no-one has visited the site in the last 30 minutes, it shuts down, and thus will take a few seconds to load up again. Therefore it's important to remember that this is not indicative of the typical response time of this lightweight app.