class Child < ActiveRecord::Base
  belongs_to :mom
  has_many :toys


  def self.girl?(child)
    if child.gender == "female"
      return true
    end
  end

  def self.many_toys(child)
    if child.toys.length == 0
      return "no toys 😥"
    elsif child.toys.length == 1
      return "only one toy"
    else
      return "#{child.toys.length} toys"
    end
  end

end
