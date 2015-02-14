require 'rails_helper'

describe User do
  it { should have_many(:donations) }
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
end
