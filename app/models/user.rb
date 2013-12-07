class User < ActiveRecord::Base
  
  def self.from_omniauth(auth)
    where(email: auth["info"]["email"]).first_or_initialize.tap do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.email = auth["info"]["email"]
      user.save!
    end
  end

end
