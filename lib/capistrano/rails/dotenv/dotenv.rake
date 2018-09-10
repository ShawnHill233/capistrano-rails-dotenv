namespace :deploy do
  task :upload_dotenv do

    env_file = fetch(:env_file, ".env.#{fetch(:stage)}")
  	fail "The .env file not specify or not found." unless File.exist?(env_file)

    on roles(:all) do
      to_path = "#{shared_path}/.env"
      info "copying: #{env_file} to: #{to_path}"
      upload! env_file, to_path
    end
  end

  after :started, :upload_dotenv
end
