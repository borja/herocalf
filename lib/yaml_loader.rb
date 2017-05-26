# YAML Loader helper
# TODO: "./lib" seems to be wrong place to handle this method
# TODO: Test if this requirement is redundant
require 'yaml'

# Main fake DB loading method
def load_yaml(path) # Path must be in /data
  # path must be a yaml file path
  YAML.load_file(File.join(__dir__, "../data/#{path}.yml"))
  # YAML keys will be allways strings (never symbols)
  # Returns hash of values (strings)
end
