module GraphGuru
  class Engine < ::Rails::Engine

		initializer "graph_guru.precompile", :group => :all do |app|
      app.config.assets.precompile << %w{graph_guru/morris.js graph_guru/raphael.js}
    end

    initializer "graph_guru.helper" do |app|
      ActiveSupport.on_load(:action_view) do
        include GraphGuru::Helper
      end
    end

  end
end
