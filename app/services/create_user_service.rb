# frozen_string_literal: true

class CreateUserService
  def call(name, email, password, role = :user)
    begin
      user = User.find_or_create_by!(email: email) do |u|
        u.email = email
        u.password = password
        u.password_confirmation = password
        u.name = name
        u.role = role

        puts "-- Created account '#{email}' with role '#{role}'"
      end
          
    rescue => e
      puts "-- Could not create account. Reason: #{e.message}"
      puts "#{e.backtrace.join("\n")}"
    end
  end
end