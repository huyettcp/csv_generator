VitalsConfig::Application.routes.draw do
  root :to => 'translation_key#index'
  match '/keys/export' => 'translation_key#export_translation_keys'
end
