
RSpec.describe OrderItem, type: :model do
  describe 'Database Table' do
    it {
    is_expected.to have_db_column(:id)
    .of_type(:integer)
   }
    it { is_expected.to have_db_column(:order_id)
    .of_type(:integer) 
    }
    it { is_expected.to have_db_column(:product_id)
    .of_type(:integer) 
    }
  end

  describe 'Association' do
    it { is_expected.to belong_to(:order).required(true) }
    it { is_expected.to have_many(:product).required(true)}
  end

  describe 'Factory ' do
    it 'is expected to be valid' do
      expect(create(:order_item)).to be_valid
    end
  end
end
