Rails.application.routes.draw do

 root to: "posts#index"

	resources :todo_lists do
		resources :todo_items do 
			member do
				put :complete	
			end
		end
	end
	#root "todo_lists#index"

end


