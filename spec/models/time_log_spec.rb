require 'rails_helper'

RSpec.describe TimeLog, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:organization) }
end
