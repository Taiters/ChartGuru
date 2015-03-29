require "graph_guru/helper"
require "graph_guru/engine"

module GraphGuru
	
	mattr_accessor :date_format
	@@date_format = nil

	def self.setup
		yield self
	end
end
