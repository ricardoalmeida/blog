require "highline/import"

namespace :admin do

  def ask_password(message)
    ask(message) do |console|
      console.echo = "*"
    end
  end

  desc "Create a new Admin account"
  task :create => :environment do
    username = ask "Username: "
    email = ask "Email: "
    password = ask_password "Password: "
    password_confirmation = ask_password "Confirm password: "
    Admin.create! :username => username, :email => email,
                  :password => password, :password_confirmation => password_confirmation
  end

end
