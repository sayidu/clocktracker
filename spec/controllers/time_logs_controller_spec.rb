# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TimeLogsController do
  let(:user) do
    FactoryBot.create(:user)
  end
  let(:organization) do
    FactoryBot.create(:organization)
  end
  before(:each) do
    @request.env['devise.mapping'] = Devise.mappings[:user]
    sign_in user
  end

  describe '#index' do
    it 'returns index template' do
      get :index

      expect(response).to render_template(:index)
    end
  end

  describe '#create' do
    it 'redirects to the index view' do
      timelog_params = {
        comments: "Arrived late due to doctor's appointment",
        week_day: TimeLog.week_days.keys.sample,
        purpose: TimeLog.meal_times.keys.sample,
        time_in: Date.current,
        user_id: User.last.id,
        organization_id: organization.id
      }

      post :create, params: { time_log: timelog_params }

      expect(response).to redirect_to time_logs_path
    end
  end

  describe '#show' do
    it 'render the show template' do
      time_log = FactoryBot.create(:time_log, user_id: user.id)

      get :show, params: { id: time_log.id }

      expect(response.status).to eq 200
    end
  end

  describe '#update' do
  it 'redirects to the index view' do
    time_log = FactoryBot.create(:time_log, user_id: user.id)
    timelog_params = {
      time_out: Date.current + 12.hours,
    }

    post :update, params: { id: time_log.id, time_log: timelog_params }

    expect(response).to redirect_to time_logs_path
  end
end
end
