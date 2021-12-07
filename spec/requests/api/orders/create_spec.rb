# 1. Need a product so we actyay have something to order
# 2. need a user so we know who ordered a product 
# 3. We need to be able to create an order and connect / associate it with the user
# 4. we need to asscoate the order with a product using a join table that we will call Orderitem 

RSpec.describe 'POST /api/orders' do
    subject { response }
    before do 
    post '/api/orders', params: { order: { product_id: 1, user_id: 1 } }
    end

    it { is_expected.to have_http_status created }

end


Controller

