class Reminder < ActiveRecord::Base
  belongs_to :medication
  def self.default_intervals #note how this seperates out the whole thing.
    %w(morning midday afternoon evening)
  end
  #idea to just create seperate deafult intervals and use params instances to create them? 
  #
end
