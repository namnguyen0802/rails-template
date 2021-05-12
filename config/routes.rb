Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  devise_for :users, controllers: { sessions: 'users/auths/sessions',
                                    registrations: 'users/auths/registrations',
                                    passwords: 'users/auths/passwords',
                                    confirmations: 'users/auths/confirmations'
  },
             path: '', path_names: { sign_up: 'users/sign-up' }
end
