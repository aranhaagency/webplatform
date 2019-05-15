# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

# Precompile css files
Rails.application.config.assets.precompile += %w[
  ngos.css
  ngo_area.css
  adoption.css
]

# Precompile js files
Rails.application.config.assets.precompile += %w[
  ngo_area.js
  ngo_area/ngos/form.js
  ngo_area/users/form.js
  adoption/index.js
  adoption/_request_adoption_modal.js
]
