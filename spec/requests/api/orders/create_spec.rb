# 1. Need a product so we actyay have something to order
# 2. need a user so we know who ordered a product 
# 3. We need to be able to create an order and connect / associate it with the user
# 4. we need to asscoate the order with a product using a join table that we will call Orderitem 

RSpec.describe 'POST /api/orders', type: :request  do
    let(:user) {create(:user)}
    subject { response }
    before do 
    post '/api/orders', params: { 
        order: { 
            product_id: 1, user_id: user.id 
            }
         }
         @order = Order.last
    end

    it { is_expected.to have_http_status :created }

    it " is expected to create an instance of order" do 
    expect(@order).to_not eq nil 
    end

    it "is to associate order with user" do 
        expect(@order.user).to eq user
        end

end


