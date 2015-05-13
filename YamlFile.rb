require 'yaml'

module XBS

class YamlFile
	def initialize file
		file_object = File.new(file, 'r')
		data_string = file_object.read()
		@data = YAML::load(data_string)
		file_object.close()
	end

	def data; @data end
end

end
