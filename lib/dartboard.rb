require "using"

module Dartboard
  extend Using

  using :Version

  def self.throw(hash_of_object_to_numbers, options={})
    if options[:percentage]
      dup_hash = hash_of_object_to_numbers.dup

      dup_hash.each do |key, value|
        dup_hash[key] = value * 100
      end

      throw(dup_hash, :percentage => false)
    else
      array = []

      hash_of_object_to_numbers.each do |obj, percentage|
        1.upto(percentage.round) do
          array.push(obj)
        end
      end

      array.sort_by { rand }[0]
    end
  end
end
