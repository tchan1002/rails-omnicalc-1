Rails.application.routes.draw do
  get("/",{:controller => "morty", :action => "square_new"})
  get("/square/new",{:controller => "morty", :action => "square_new"})
  get("/square/results",{:controller => "morty", :action => "square_results"})
  get("/square_root/new",{:controller => "morty", :action => "square_root_new"})
  get("/square_root/results",{:controller => "morty", :action => "square_root_results"})
  get("/payment/new",{:controller => "morty", :action => "payment_new"})
  get("/payment/results",{:controller => "morty", :action => "payment_results"})
  get("/random/new",{:controller => "morty", :action => "random_new"})
  get("/random/results",{:controller => "morty", :action => "random_results"})
end
