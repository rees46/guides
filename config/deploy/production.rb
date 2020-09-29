role :app, %w{176.9.145.71}
role :web, %w{176.9.145.71}
role :db,  %w{176.9.145.71}

set :stage, :production

set :log_level,   :info

set :ssh_options, {
    user: 'guides',
    forward_agent: true,
    port: 21212
}

set :application, 'guides.rees46.com'
set :deploy_to, "/home/guides/#{fetch(:application)}"
set :branch, 'master'
set :rails_env, 'production'

set :default_environment, {
    'RUBY_VERSION' => 'ruby 2.7.0'
}

