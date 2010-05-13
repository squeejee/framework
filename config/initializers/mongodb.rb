File.open(File.join(Rails.root, 'config/mongodb.yml'), 'r') do |f|
  @settings = YAML.load(f)[RAILS_ENV]
end

Mongoid.configure do |config|
  name = @settings["database"]
  host = @settings["host"]
  config.master = Mongo::Connection.new.db(name)
end