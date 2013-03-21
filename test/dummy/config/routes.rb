Rails.application.routes.draw do

	root :to => 'welcome#index'

	mount TxtPages::Engine => "/txt_pages", :as => "txt_pages"
  	get ':id', to: 'txt_pages::pages#show', as: :page

end