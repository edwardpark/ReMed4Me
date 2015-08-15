class Reminder < ActiveRecord::Base
  belongs_to :medication
  # mms: unnecessary.  reminder.medication.user returns the user.  Having another reference causes issues trying to synch it all the time.  Like your MedicationsController workaround.
  belongs_to :user
  def self.default_intervals #note how this seperates out the whole thing.
    %w(morning midday afternoon evening)
  end
  #idea to just create seperate deafult intervals and use params instances to create them?
  #
end
