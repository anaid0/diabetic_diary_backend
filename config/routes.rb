DiabeticDiaryBackend::Application.routes.draw do
  root 'users#index'
  resources :users, except: [:new, :edit] do
    resources :entries, except: [:new, :edit] do
      resources :meals, except: [:new, :edit]
      resources :notes, except: [:new, :edit]
      resources :doses, except: [:new, :edit]
      resources :measurements, except: [:new, :edit]
      resources :activities, except: [:new, :edit]
    end
    resources :activity_types, except: [:new, :edit]
    resources :measurement_types, except: [:new, :edit]
    resources :insulin_types, except: [:new, :edit]
  end
end
