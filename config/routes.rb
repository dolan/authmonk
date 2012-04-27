Authmonk::Engine.routes.draw do
  devise_for :users,
    module:     :devise,
    class_name: 'Authmonk::User',
    path:       'accounts',
    path_names: { sign_up: 'register', sign_in: 'login', sign_out: 'logout' }
end
