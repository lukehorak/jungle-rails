require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    #do the thing
    it {is_expected.to validate_presence_of(:email)}
    it {is_expected.to validate_presence_of(:first_name)}
    it {is_expected.to validate_presence_of(:last_name)}

    it{ should have_secure_password}
  
  end

end
