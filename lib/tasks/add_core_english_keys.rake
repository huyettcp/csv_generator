namespace :add_core_english_keys do
  desc "Add the Core Default English keys"
  task :seed => :environment do
  
  TranslationKey.destroy_all
  
  require 'json'

  json_data = File.read('/Users/christopherhuyett/Desktop/Code/vitals_config/core_default_translation_keys.json')
  all_data = JSON.parse(json_data)

  counter = 0

  while counter < 1116
    core_default = "Core Default"
    key = all_data["en_us"].keys[counter].to_s
    english_text = all_data["en_us"].values[counter].to_s

    counter += 1

    translation_key = TranslationKey.create(account_name: core_default, translation_key_name: key, english_text: english_text)
  end
  
  end
end
