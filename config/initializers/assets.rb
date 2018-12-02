# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

Rails.application.config.assets.precompile += %w( vendor/bootstrap/css/bootstrap.min.css )
Rails.application.config.assets.precompile += %w( vendor/fontawesome-free/css/all.min.css )
Rails.application.config.assets.precompile += %w( https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic )
Rails.application.config.assets.precompile += %w( https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800 )
Rails.application.config.assets.precompile += %w( css/clean-blog.min.css )
Rails.application.config.assets.precompile += %w( vendor/jquery/jquery.min.js )
Rails.application.config.assets.precompile += %w( vendor/bootstrap/js/bootstrap.bundle.min.js )
Rails.application.config.assets.precompile += %w( js/clean-blog.min.js )
Rails.application.config.assets.precompile += %w( *.jpg *.png )
