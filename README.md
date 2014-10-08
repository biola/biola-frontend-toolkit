# Biola Frontend Toolkit

This toolkit includes a shared header and some other view helpers designed for our Biola web applications.

## Installation

Add this line to your application's Gemfile:

    gem 'biola_frontend_toolkit'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install biola_frontend_toolkit

#### Dependencies

* bootstrap-sass
* coffee-rails
* font-awesome-rails
* slim

## Usage

### Rails > 3.1

Your layout file should look something like this

    doctype html
    html lang="en-us"
      head
        / frontend_toolkit/head includes default html head tags and csrf_meta_tags
        = render 'frontend_toolkit/head', title: 'Direcotry'
        = stylesheet_link_tag "application", media: "all"
      body class="#{controller_name} #{action_name}"
        = render 'frontend_toolkit/header'
        = yield
        = javascript_include_tag "application"

Include the following in `application.css.scss`. This will add require statements for `bootstrap` and `font-awesome` automatically.

    //= require biola-frontend-toolkit

Include the following in `application.js.coffee`. This includes `jquery`, `jquery_ujs`, and `bootstrap` automatically.

    #= require biola-frontend-toolkit


#### Other requirements

* `current_user` - When a user is logged in
* `logout_path` - Should return a link to the logout path
* `/whateverpath?login=true` - Should be caught by ApplicationController and redirect to login page if not already logged in.


#### Configuration

Create a new file called `/config/initializers/biola_frontend_toolkit.rb`

    BiolaFrontendToolkit.configure do |config|
      config.app_name = Settings.app.name
      config.app_version = Version.current  # optional
      config.relative_root = Settings.app.relative_url_root
      config.release_phase = Settings.release.phase

      # App Links
      config.app_links = [
        {title: 'Gmail', url: 'http://mail.biola.edu', icon: 'envelope-square'},
        {title: 'Forms', url: 'http://forms.biola.edu', icon: 'check-square-o'},
      ]

      # Profile Links
      config.profile_links = [
        {title: 'My Account', url: [:my_account, :user], icon: 'user'},
      ]

      # Google Analytics   ## Optional ##
      config.ga_account = 'UA-XXXXXXXX-XX'
      config.ga_domain = 'biola.edu'
      config.ga_enabled = true   # defaults to false
    end

## View Partials
### frontend_toolkit/head
Use this partial to include default html head tags and csrf_meta_tags

### frontend_toolkit/header
Use `frontend_toolkit/header` for content publishers and other employee web apps.

### frontend_toolkit/prerelease_banner
Use `frontend_toolkit/prerelease_banner` when your app is in the alpha or beta phases. Make sure BiolaFrontendToolkit.config.release_phase is set to `alpha` or `beta`.

    = render 'frontend_toolkit/prerelease_banner', feedback_form_url: Settings.feedback.form_url

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
