Paxos::Application.routes.draw do
  namespace :admin do
    resources :estudios
    resources :conceptos
    resources :tipo_conceptos
    resources :caso_estados
    resources :tipo_actores
    resources :tipo_procesos
    resources :feriados
    resources :juzgados do
      resources :instancias
    end
    resources :users

    root to: "estudios#index"
  end

  resources :actores
  resources :casos do
    resources :consultas
  end
  resources :documentos
  resources :movimientos

  root to: "actores#index"

  devise_for :admins
  devise_for :users
end
