class Box
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps
  NoBrainer::Document::DynamicAttributes
  
  store_in :database => ->{ "#{Thread.current[:member]}" }
  self.include_root_in_json = true

  belongs_to :app
  has_many :items

  field :name, :type => String
  field :app_id, :type => String
  field :note, :type => String
  field :permissions, :type => String
end
