class RoomStatus < ActiveRecord::Base
  ROOMNAME = [["Pool Suite", "Pool Suite"], ["Deluxe Suite", "Deluxe Suite"], ["Superior Suite", "Superior Suite"],
              ["Deluxe", "Deluxe"], ["Superior", "Superior"]]
  STATUS = %w[Available Used]

  has_many :guestmessages


end
