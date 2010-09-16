Blog::Application.configure do
  config.after_initialize do
    disqus_conf = YAML.load_file("#{Rails.root}/config/disqus.yml")[Rails.env]
    disqus_conf.each do |key, value|
      Disqus::defaults[key.to_sym] = value
    end
  end
end
