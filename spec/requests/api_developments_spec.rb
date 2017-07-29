require 'rails_helper'

RSpec.describe 'ApiDevelopments', type: :request do
  def parsed_body
    JSON.parse(response.body)
  end
    
  describe 'Cities' do
    before(:each) { City.delete_all }
    after(:each) { City.delete_all }

    it 'create MongoDB-backed model' do
      object = City.create(name: 'Baltimore')
      expect(City.find(object.id).name).to eq('Baltimore')
    end
    
    it 'expose City API' do
      object = City.create(name: 'Baltimore')
      expect(cities_path).to eq('/api/cities')
      get city_path(object.id)
      expect(response).to have_http_status(:ok)
      expect(parsed_body['name']).to eq('Baltimore')
      expect(parsed_body).to include('created_at')
    end
  end

  describe 'States' do
    before(:each) { State.delete_all }
    after(:each) { State.delete_all }

    it 'create MongoDB-backed model' do
      object = State.create(:name=>'test')
      expect(State.find(object.id).name).to eq('test')
    end
    
    it 'expose State API' do
      object = State.create(name: 'Maryland')
      expect(states_path).to eq('/api/states')
      get state_path(object.id)
      expect(response).to have_http_status(:ok)
      expect(parsed_body['name']).to eq('Maryland')
      expect(parsed_body).to include('created_at')
      expect(parsed_body).to include('id'=>object.id.to_s)
    end
  end
  

end
