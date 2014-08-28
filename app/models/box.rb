class Box
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  belongs_to :app

  field :name, :type => String
  field :app_id, :type => String
  field :note, :type => String
  field :permissions, :type => String
end
