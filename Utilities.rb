# This file includes general XBS Utilities as
# well as some extensions to stanard ruby classes

class Hash
	def push key, value
		self[key] = value
	end

	def put key, value
		self[key] = value
	end
end
