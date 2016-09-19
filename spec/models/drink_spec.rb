require 'rails_helper'

describe Drink do
  it { should validate_presence_of :name}
  it { should validate_presence_of :fruit}
  it { should validate_presence_of :origin}
  it { should validate_presence_of :description}
  it { should validate_presence_of :cost}

end
