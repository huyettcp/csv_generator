namespace :add_core_spanish_keys do
  desc "Add the Core Default Spanish keys"
  task :seed => :environment do

  require 'json'

  json_data = File.read('/Users/christopherhuyett/Desktop/Code/vitals_config/core_default_translation_keys_spanish.json')
  all_data = JSON.parse(json_data)
  
  counter = 0
  
  while counter < 1008
    core_default = "Core Default"
    key = all_data["sp_us"].keys[counter].to_s
    spanish_text = all_data["sp_us"].values[counter].to_s

    counter += 1

    existing_key = TranslationKey.find_by_translation_key_name(key)

    if existing_key != nil
      existing_key.update_attribute :spanish_text, spanish_text
    else
      puts "Not found. At all. So I'll create one."
      translation_key = TranslationKey.create(account_name: core_default, translation_key_name: key, spanish_text: spanish_text)
    end



  end
  end
end

