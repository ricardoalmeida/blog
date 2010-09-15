Blog::Application.configure do
  config.after_initialize do
    disqus_conf = YAML.load_file("#{RAILS_ROOT}/config/disqus.yml")[RAILS_ENV]
    disqus_conf.each do |key, value|
      Disqus::defaults[key.to_sym] = value
    end
  end
end
