class RecipesController < ApplicationController

  def index
    entries = client.entries(content_type: 'recipe')
    render action: :index, locals: { entries: entries }
  end

  def show
    entry = client.entry(params[:id])
    render action: :show, locals: { entry: entry }
  end

  private

  def client
    @client ||= Contentful::Client.new(
      space: Rails.application.credentials.api[:space_id],
      access_token:  Rails.application.credentials.api[:access_token],
    )
  end
end
