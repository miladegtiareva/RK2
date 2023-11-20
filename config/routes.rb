Rails.application.routes.draw do
  get 'calc/input'
  get 'calc/view'
  root 'calc#input'
end
