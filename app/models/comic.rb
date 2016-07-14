class Comic < ActiveRecord::Base
  belongs_to :publisher

  # NHO: can you think of any good model methods you might want to define?
  # These would be a great way to define any ability to sort comics
  # For example, you can make a method that sorts based on year range, etc..
end
