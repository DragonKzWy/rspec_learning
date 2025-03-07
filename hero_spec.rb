require 'spec_helper'
require_relative '../lib/hero'

describe Hero do
  it "has a sword" do
    hero = Hero.new
    expect(hero.weapon).to eq('sword')
  end
  it "has more than 1000 hitpoints" do
    hero = Hero.new
    expect(hero.hitpoints).to be > 1000
  end
end