class App
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, :type => String
  field :member_id, :type => String
  field :note, :type => String
  field :app_key, :type => String
  field :domain, :type => String
end
