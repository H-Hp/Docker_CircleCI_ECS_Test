require_relative "production" #production.rbの設定をオーバーライド
Rails.application.configure do
  # production.rbを上書きする設定を記述
  config.hosts << "docker-circleci-ecs-test-git.onrender.com"
end
