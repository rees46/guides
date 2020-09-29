role :app, %w{148.251.233.13}
role :web, %w{148.251.233.13}
role :db,  %w{148.251.233.13}

set :stage, :production

set :log_level,   :info

set :ssh_options, {
    user: 'guides',
    forward_agent: true,
    port: 21212
}

set :application, 'guides'
set :deploy_to, "/home/guides/#{fetch(:application)}"
set :branch, 'master'
set :rails_env, 'production'

set :default_environment, {
    'RUBY_VERSION' => 'ruby 2.7.0'
}

