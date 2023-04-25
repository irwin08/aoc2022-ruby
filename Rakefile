# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake/testtask"

require_relative "lib/aoc2022/day1/day1"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/test_*.rb"]
end



task :day1 do
  day1 = Aoc2022::Day1::Day1.new
  day1.solve
end

require "rubocop/rake_task"

RuboCop::RakeTask.new

task default: %i[test rubocop]
