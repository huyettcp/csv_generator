class TranslationKeyController < ApplicationController
  require 'csv'

  def export_translation_keys
    @key = TranslationKey.all
    translation_key_csv = CSV.generate do |csv|
      csv << ["Account", "Key", "English Text", "Spanish Text"]
      @key.each do |key|
        csv << [key.account_name, key.translation_key_name, key.english_text, key.spanish_text]     
      end   
    end   
    send_data(translation_key_csv, :type => 'text/csv', :filename => 'test_keys.csv')
 end

end
