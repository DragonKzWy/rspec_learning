require 'spec_helper'
require_relative '../lib/hero'

describe Hero do
  it "has a sword" do
    hero = Hero.new
    expect(hero.weapon).to eq('sword')
  end
end