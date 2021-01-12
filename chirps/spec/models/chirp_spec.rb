require 'rails_helper'

RSpec.describe Chirp, type: :model do
  describe 'validations' do
    it { should validate_length_of(:text).is_at_most(140) }
  end
end
