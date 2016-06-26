# General configuration
activate :sprockets
activate :autoprefixer
activate :blog do |blog|
  blog.prefix = "blog"
  blog.layout = "layouts/application"
  blog.permalink = "{year}/{title}.html"
  blog.tag_template = "blog/tag.html"
  blog.calendar_template = "blog/calendar.html"
end
activate :directory_indexes

set :css_dir, "assets/stylesheets"
set :js_dir, "assets/javascripts"
set :images_dir, "assets/images"
set :fonts_dir, "assets/fonts"
set :layout, "layouts/application"

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

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

# Build-specific configuration
configure :build do
  activate :relative_assets
end
