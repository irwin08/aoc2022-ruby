# frozen_string_literal: true

require_relative "../Day"

module Aoc2022
  module Day1
    # --- Day 1: Calorie Counting ---
    class Day1 < Day
      def solve
        data = load_data("day1.txt")
        data = data.each(&:chomp!)
        split_data = split(data, "")
        
        puts "Solution to part 1:"
        p split_data.map { |x| x.map(&:to_i).reduce(0, :+) }.max

        puts "Solution to part 2:"
        p split_data.map { |x| x.map(&:to_i).reduce(0, :+) }.sort.reverse.take(3).reduce(0, :+)
      end
      
      private

      def split(arr, token)
        length = arr.length
        i = 0
        sub_arrays = []
        sub_array = []
        while i < length
          if arr[i] == token
            sub_arrays.push(sub_array)
            sub_array = []
            i += 1
            next
          end
          sub_array.push(arr[i])
          i += 1
        end
        sub_arrays
      end
    end
  end
end
