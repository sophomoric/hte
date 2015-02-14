require 'rails_helper'

describe User do
  it { should have_many(:donations) }
  it { should validate_presence_of(:name) }
end
