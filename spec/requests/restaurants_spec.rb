require 'spec_helper'

describe "Restaurants" do
  let(:restaurant) { create(:restaurant) }

  context 'GET /restaurants' do
    it 'returns 200' do
      get restaurants_path
      expect(response.status).to eq(200)
    end
  end

  context 'GET /restaurants.json' do
    it 'returns 200' do
      get restaurants_path(format: :json)
      expect(response.status).to eq(200)
    end
  end

  context 'GET /restaurants/:id' do
    it 'returns 200' do
      get restaurant_path(restaurant)
      expect(response.status).to eq(200)
    end
  end

  context 'GET /restaurants/:id.json' do
    it 'returns 200' do
      get restaurant_path(restaurant, format: :json)
      expect(response.status).to eq(200)
    end
  end

  context 'GET /restaurants/new' do
    it 'returns 200' do
      get new_restaurant_path
      expect(response.status).to eq(200)
    end
  end

  context 'GET /restaurants/:id/edit' do
    it 'returns 200' do
      get edit_restaurant_path(restaurant)
      expect(response.status).to eq(200)
    end
  end

  context 'POST /restaurants' do
    it 'returns 302' do
      post restaurants_path, { restaurant: attributes_for(:restaurant) }
      expect(response.status).to eq(302)
    end
  end

  context 'POST /restaurants.json' do
    it 'returns 201' do
      post restaurants_path(format: :json), { restaurant: attributes_for(:restaurant) }
      expect(response.status).to eq(201)
    end
  end

  context 'PATH/PUT /restaurants/:id' do
    it 'returns 302' do
      put restaurant_path(restaurant), { restaurant: attributes_for(:restaurant) }
      expect(response.status).to eq(302)
    end
  end

  context 'PATH/PUT /restaurants/:id.json' do
    it 'returns 302' do
      put restaurant_path(restaurant), { restaurant: attributes_for(:restaurant) }
      expect(response.status).to eq(302)
    end
  end

  context 'DELETE /restaurants/:id' do
    it 'returns 302' do
      delete restaurant_path(restaurant)
      expect(response.status).to eq(302)
    end
  end

  context 'DELETE /restaurant/:id.json' do
    it 'returns 204' do
      delete restaurant_path(restaurant, format: :json)
      expect(response.status).to eq(204)
    end
  end
end
