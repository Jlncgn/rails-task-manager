Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  # Let's defined CRUD actions

  # See all the Tasks
  get "tasks", to: "tasks#index"

  # Create a restaurant
  # Step 1: GET the Form
  get "tasks/new", to: "tasks#new"

  #Step 2: POST the form
  post "tasks", to: "tasks#create"

  # See details about one Task
  get "tasks/:id", to: "tasks#show", as: :task
  # the order in which is steps are displayed in the code matters. This step is put here because, the code is read from top to bottom. Having said that, if we put that stap before # Step 1: GET the Form, the "new" will be interpreted as an ID anot worked.

  # Update a restaurant
  # Step 1: GET the Form
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task

  #Step 2: Patch the Form
  patch "tasks/:id", to: "tasks#update"

  # Destroy a restaurant
  delete "tasks/:id", to: "tasks#destroy"
end
