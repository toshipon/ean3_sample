ean3_config = File.read("#{Rails.root}/config/ean3_config.yml")
EAN3_CONFIG = YAML.load(ean3_config)[Rails.env]
