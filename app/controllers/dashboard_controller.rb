class DashboardController < ApplicationController
  def index
    if current_user
      if current_user.todo_token
        begin
          response = current_user.todo_token.client.get("http://todo-provider.heroku.com/todo_items.json")
          @items = JSON.parse(response.body)
        rescue JSON::ParserError => e
          @items = ["No JSON returned"]
        end
      elsif current_user.strings_token
      else
        @items = []
      end
    end
  end

end
