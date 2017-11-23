require 'rails_helper'

RSpec.describe Mail, type: :model do
  it { should belong_to :mail_set }

  it { should validate_presence_of :title }
  it { should validate_presence_of :body }
end
