Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'purchases#purchase_file_import'

  # Example of regular route:
  post 'purchase_file_processing' => 'purchases#purchase_file_processing'
  get 'purchase_file_result' => 'purchases#purchase_file_result'
end