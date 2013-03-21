module TxtPages
  class Page < ActiveRecord::Base
    attr_accessible :content, :name, :permalink

    validates :permalink, :uniqueness => true

    def to_param
    	permalink
    end
  end
end
