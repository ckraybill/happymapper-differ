require 'minitest/unit'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/happymapper_differ'
require 'byebug'

class TParent
  include HappyMapper
  tag 'parent'

  attribute :name, String
  has_many :children, "TChild", tag: 'child'
end

class TChild
  include HappyMapper
  tag 'child'

  attribute :name, String
  has_one :address, "TAddress"
end

class TAddress
  include HappyMapper
  tag 'address'

  has_one :name, String
  has_one :street, String
  has_one :city, String
end