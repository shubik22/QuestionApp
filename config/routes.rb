QuestionApp::Application.routes.draw do
  root to: "static_pages#home"
  namespace :api do
    resources :questions
  end
end