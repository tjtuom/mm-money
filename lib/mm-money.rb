require 'rubygems'
require 'money'

class Money
  def self.to_mongo(value)
    value = if value.instance_of? Money
      value
    elsif value.kind_of? Numeric
      value.to_money
    elsif value.kind_of? String
      value.to_money
    end

    unless value.nil?
      value.format(:with_currency => true)
    else
      nil
    end
  end

  def self.from_mongo(value)
    if value.instance_of? Money
      value
    elsif value.kind_of? Numeric
      value.to_money
    elsif value.kind_of? String
      value.to_money
    else
      nil
    end
  end
end
