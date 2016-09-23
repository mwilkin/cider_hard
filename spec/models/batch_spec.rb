require 'rails_helper'

describe Batch do
  it { should validate_presence_of :batch_name}
  it { should validate_presence_of :fruit_weight}
  it { should validate_presence_of :fruit_type}
  it { should validate_presence_of :barrel_type}
  it { should validate_presence_of :temperature}
  it { should validate_presence_of :alcohol_content}
  it { should validate_presence_of :pH}
  it { should validate_presence_of :fruit_cost}

end
