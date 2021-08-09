Rails.application.routes.draw do
  get 'clients/by_name'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      get 'by_date/:day', to: 'ufs#by_date'
      get 'clients/:name', to: 'clients#by_name'
    end
  end
end
