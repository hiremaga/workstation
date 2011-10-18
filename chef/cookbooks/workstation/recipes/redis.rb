brew_install 'redis'

directory "/Users/#{WS_USER}/Library/LaunchAgents" do
  owner WS_USER
  action :create
end

execute "copy redis plist to ~/Library/LaunchAgents" do
  command "cp `brew --prefix redis`/io.redis.redis-server.plist #{WS_HOME}/Library/LaunchAgents/"
  user WS_USER
  creates "#{WS_HOME}/Library/LaunchAgents/io.redis.redis-server.plist"
end

execute "load the redis plist into the mac daemon startup thing" do
  command "launchctl load -w #{WS_HOME}/Library/LaunchAgents/io.redis.redis-server.plist"
  user WS_USER
  not_if 'launchctl list io.redis.redis-server.plist'
end
