===========
Description
===========

We deliver justice.


======
TODOS
======

1. add the following resources:

user
- email
- username
- password

case
- title
- descrition
- goal amount
- plaintiff
- defendant

backer
- userId
- case
- amount

2. authentication


================
rails api guide:
================

1.

  namespace :api, defaults: { format: :json } do
    scope module: :v1 do
        resources :tasks
    end
  end

- make sure tasks_controller in the following directory app/controllers/api/v1/tasks_controller.rb
- add Api::V1:: to class declaration which will look something like this: class Api::V1::TasksController < ApplicationController



2.
    def task_params
      params.require(:task).permit(:name)
    end

- Post format :

    {"task": {"name": "masak"}}

- also make sure Content-type : application/json

ref:
- http://stackoverflow.com/questions/20667404/rails-4-api-with-strong-parameters



3. 

    if @task.save
      render json: @task, status: :created, location: @task

- change to:

    if @task.save
      render json: @task, status: :created, location: api_tasks_path(@task)

ref:
- http://stackoverflow.com/questions/15629741/ruby-nomethoderror-undefined-method-blah-url-for-blahcontroller
- http://guides.rubyonrails.org/routing.html







