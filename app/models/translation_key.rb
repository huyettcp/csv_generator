class TranslationKey < ActiveRecord::Base
  attr_accessible :account_name, :translation_key_name, :english_text, :spanish_text
  validates_uniqueness_of :translation_key_name, :scope => :english_text
end
