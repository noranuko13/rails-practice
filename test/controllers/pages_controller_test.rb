# frozen_string_literal: true

require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test 'GET pages#index: 200 OK' do
    get '/'
    assert_response :success
  end

  test 'GET pages#about: 200 OK' do
    get '/about'
    assert_response :success
  end
end
