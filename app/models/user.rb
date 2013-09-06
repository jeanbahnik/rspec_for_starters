class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :account_role

  def full_name
    if first_name && last_name
      return [first_name, last_name].join(" ")
    end
  end

end
