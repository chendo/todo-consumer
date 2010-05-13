class DashboardController < ApplicationController
  def index
    if current_user
      begin
        response = current_user.todo_token.client.get("http://todo.local/todo_items.json")
        @items = JSON.parse(response.body)
      rescue JSON::ParserError => e
        @items = ["No JSON returned"]
      end
    end
  end

end
