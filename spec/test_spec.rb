# frozen_string_literal: true

require "aoc2022"

describe Aoc2022::TemplateClass do
  it "First test" do
    expect(Aoc2022::TemplateClass.portray("test 1 input")).to eql("test 1 success")
  end

  it "Second test" do
    expect(Aoc2022::TemplateClass.portray("test 2 input")).to eql("test 2 success")
  end
end
