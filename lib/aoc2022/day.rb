# frozen_string_literal: true

module Aoc2022
  # Template class
  class Day
    def solve
      raise "Not implemented!"
    end

    def load_data(file_name)
      File.readlines(__dir__ + "/data/" + file_name)
    end
  end
end
