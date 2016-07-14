class Publisher < ActiveRecord::Base
  # NHO: could be a good idea to add some validations
  has_many :comics #NHO: adding , dependent: :destroy to this line would make it so
  # that whenever a publisher is delete All associated comics are also destroyed
end
