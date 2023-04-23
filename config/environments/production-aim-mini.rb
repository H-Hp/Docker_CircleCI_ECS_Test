require_relative "production" #production.rbの設定をオーバーライド
Rails.application.configure do
  # production.rbを上書きする設定を記述
  config.secret_key_base = ENV['SECRET_KEY_BASE']
  secret_key_base = ENV['SECRET_KEY_BASE']
  SECRET_KEY_BASE = ENV['SECRET_KEY_BASE']
end