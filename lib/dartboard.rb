require "using"

module Dartboard
  extend Using

  using :Version

  def self.throw(hash_of_object_to_numbers, options={})
    array = []

    hash_of_object_to_numbers.each do |obj, percentage|
      1.upto(percentage.round) do
        array.push(obj)
      end
    end

    array.sort_by { rand }[0]
  end
end
