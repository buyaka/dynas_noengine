class App
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps
  NoBrainer::Document::DynamicAttributes

  store_in :database => ->{ "#{Thread.current[:member]}" }
  self.include_root_in_json = true

  field :name, :type => String
  field :member_id, :type => String
  field :note, :type => String
  field :app_key, :type => String
  field :domain, :type => String

  validates_uniqueness_of :name
  #validates_format_of :name, with: /^[a-z0-9_]+$/, message: "must be lowercase alphanumerics only"
  validates_length_of :name, maximum: 32, message: "exceeds maximum of 32 characters"
  validates_length_of :name, minimum: 5, message: "exceeds minimum of 5 characters"
  #validates_exclusion_of :name, in: ['www', 'mail', 'ftp'], message: "is not available"
end
