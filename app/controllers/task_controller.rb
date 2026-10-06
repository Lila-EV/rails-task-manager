class TaskIndexController < ApplicationController
  def index
    @tasks = Task.all
  end
end
