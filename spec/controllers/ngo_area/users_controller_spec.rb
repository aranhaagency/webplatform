require 'rails_helper'

describe NgoArea::UsersController do
  login_user(:admin_privileges)

  subject { create(:user) }

  describe 'GET #index' do
    before do
      get :index
    end

    it 'returns 200 code status' do
      expect(response).to have_http_status(:ok)
    end

    context 'when user is not admin' do
      before do
        user = create(:user, :ngo_privileges)
        allow(controller).to receive(:current_user) { user }

        get :index
      end

      it 'returns not found code' do
        expect(response).to have_http_status(:not_found)
      end
    end
  end

  describe 'GET #new' do
    before do
      get :new
    end

    it 'returns 200 code status' do
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET #create' do
    before do
      get :create, params: { user: attributes_for(:user) }
    end

    it 'returns 302 code status' do
      expect(response).to have_http_status(:found)
    end

    it 'redirects to index' do
      expect(response).to redirect_to(action: :index)
    end
  end

  describe 'GET #edit' do
    before do
      get :edit, params: { id: subject.id }
    end

    it 'returns 200 code status' do
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET #update' do
    before do
      get :update, params: { id: subject.id, user: attributes_for(:user) }
    end

    it 'returns 302 code status' do
      expect(response).to have_http_status(:found)
    end

    it 'redirects to index' do
      expect(response).to redirect_to(action: :index)
    end
  end
end
