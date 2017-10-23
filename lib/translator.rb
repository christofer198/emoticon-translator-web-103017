# require modules here
require 'yaml'


def load_library(yaml_path)
  yaml_hash = YAML.load_file(yaml_path)
  emoticon_library = {"get_meaning" => {}, "get_emoticon" => {}}
  yaml_hash.each do |key, value|
    value.each do |emoticon|
      emoticon_library["get_meaning"][emoticon] = key
      emoticon_library["get_emoticon"][value[0]] = key
    end
  end
  emoticon_library

end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
