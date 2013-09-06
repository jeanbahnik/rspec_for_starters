class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :account_role

  def full_name
    [first_name, last_name].join(" ")
  end

  def is_admin?
    !account_role.nil? && account_role == "admin"
  end
end
