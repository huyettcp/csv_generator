namespace :add_spanish_hcsc_keys do
  desc "Add the HCSC Spanish keys"
  task :seed => :environment do

   require 'json'

    json_data = File.read('/Users/christopherhuyett/Desktop/Code/vitals_config/hcsc_spanish_translation_keys.json')
    all_data = JSON.parse(json_data)

    counter = 0

    while counter < 391
    hcsc = "HCSC"
    key = all_data["en_us"].keys[counter].to_s
    spanish_text = all_data["en_us"].values[counter].to_s

    counter += 1

    existing_key = TranslationKey.find_by_translation_key_name(key)

    if (existing_key != nil) && (existing_key.account_name != "Core Default")
      existing_key.update_attribute :spanish_text, spanish_text
    end

  end
  end


end
  