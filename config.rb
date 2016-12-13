###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
with_layout :email do
  page "/email/*"
end

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

Encoding.default_external = "utf-8"

set :css_dir, 'sass'

set :js_dir, 'js'

set :images_dir, 'img'

# Build-specific configuration
configure :build do
end

activate :livereload

activate :deploy do |deploy|
  deploy.build_before = true # default: false
end

set :relative_links, true

ignore 'img/icons*'
ignore 'bower_components/*'
ignore 'node_modules/*'
ignore 'gulpfile.js'
ignore 'gulpfile.js.example'
ignore 'bower.json'
ignore 'package.json'

