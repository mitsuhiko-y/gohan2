# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

Rails.application.config.assets.precompile += %w( users.show.scss )
Rails.application.config.assets.precompile += %w( app.new.scss )
Rails.application.config.assets.precompile += %w( app.index.scss )
Rails.application.config.assets.precompile += %w( signup.scss )
Rails.application.config.assets.precompile += %w( posts.index.scss )
Rails.application.config.assets.precompile += %w( posts.new.scss )
Rails.application.config.assets.precompile += %w( posts.show.scss )
Rails.application.config.assets.precompile += %w( posts.edit.scss )
Rails.application.config.assets.precompile += %w( comments.edit.scss )
Rails.application.config.assets.precompile += %w( users.index.scss )
Rails.application.config.assets.precompile += %w( signup.scss )
Rails.application.config.assets.precompile += %w( signin.scss )
Rails.application.config.assets.precompile += %w( user.edit.scss )
Rails.application.config.assets.precompile += %w( likes.index.scss )