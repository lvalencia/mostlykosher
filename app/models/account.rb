class Account < ActiveRecord::Base
   attr_accessor :password
   
   after_create :erase_password
   before_create :encrypt_password

   validates :email, presence: true, uniqueness: true, format: { with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/}
   validates :password, presence: true, length: { in: 6..20 }

   def erase_password
      self.password = nil 
   end 
   
   def encrypt_password
      if password.present?
         self.salt = BCrypt::Engine.generate_salt
         self.encrypted_password = BCrypt::Engine.hash_secret(password, self.salt)
      end 
   end

end
