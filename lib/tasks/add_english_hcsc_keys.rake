namespace :add_english_hcsc_keys do
  desc "Add the HCSC English keys"
  task :seed => :environment do

  require 'json'
  
  json_data = File.read('/Users/christopherhuyett/Desktop/Code/vitals_config/hcsc_translation_keys.json')
  all_data = JSON.parse(json_data)

  counter = 0

  while counter < 407
    hcsc = "HCSC"
    key = all_data["en_us"].keys[counter].to_s
    english_text = all_data["en_us"].values[counter].to_s

    counter += 1

    translation_key = TranslationKey.create(account_name: hcsc, translation_key_name: key, english_text: english_text)
  end
  
  end
end
