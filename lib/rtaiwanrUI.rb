require "rtaiwanrUI/version"

module RtaiwanrUI
  module Rails
    class Engine < ::Rails::Engine
      initializer 'rtaiwanrUI.assets.precompile' do |app|
        app.config.assets.paths << root.join('assets', 'fonts').to_s
        app.config.assets.precompile += %w[rtaiwanrUI.*]
        app.config.assets.precompile << /\.(?:svg|eot|woff|woff2|ttf|jpg|gif)\z/
      end
    end
  end
end
