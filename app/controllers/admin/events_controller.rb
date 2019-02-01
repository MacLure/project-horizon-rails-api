class Admin::EventsController < ApplicationController
  def index
      @event = Event.all
      render json: @event
    end

    def create
      event = Event.new(event_params)

      if event.save
        render json: event
      else
        render json: event.errors

    end

    def show
      render json: @event
    end

    def update
      @event = Event.find(JSON.parse(params['id']))
      @event.update
    end

    def destroy
      @event = Event.find(JSON.parse(params['id']))
      @event.destroy
    end

    private

    def event_params
      params.require(:event).permit( :name, :date, :time, :body, :company_id, :contact_id, :cohort_id  )
    end
end
