# email:string
# password_digest:string

# password:string
# password_confirmation:string  virtual

class User < ApplicationRecord
    has_secure_password
end
