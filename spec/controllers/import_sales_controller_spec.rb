require 'rails_helper'
require 'byebug'

RSpec.describe ImportSalesController, type: :controller do
    describe 'GET index' do
      it 'should returns success response and index template' do
        get :index
        expect(response).to be_successful
        expect(response).to render_template(:index)
      end
    end

    describe 'GET new' do
      it 'should returns a success response and new template' do
        get :new
        expect(response).to be_successful
        expect(response).to render_template(:new)
      end
    end

    describe 'POST create' do
      it 'should create a import_sale' do

      end
    end

    describe 'GET show' do
      let!(:import_sale) {create(:import_sale)}
      it 'should show a import_sale' do
        p import_sale
        get :show, params: {id: import_sale.id}
        expect(response).to render_template('show')
      end
    end


end
