class Admins::SessionsController < Devise::SessionsController
  autocomplete :user, :username
end