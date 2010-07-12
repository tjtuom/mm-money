require 'rubygems'
require 'money'

class Money
  def self.to_mongo(value)
    if value.kind_of?(Array)
      value
    elsif value.nil? || !value.respond_to?(:to_money)
      nil
    else
      value = value.to_money
      [value.cents, value.currency.iso_code]
    end
  end

  def self.from_mongo(value)
    if value.kind_of?(Money)
      value
    elsif value.kind_of?(Array)
      Money.new(value.first, value.second)
    else
      nil
    end
  end
end
