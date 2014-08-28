class Item
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps
  NoBrainer::Document::DynamicAttributes

  store_in :database => ->{ "#{Thread.current[:member]}" }
  self.include_root_in_json = true

  belongs_to :box

  field :box_id, :type => String
  field :name, :type => String
  field :type, :type => String
  field :note, :type => String
end
