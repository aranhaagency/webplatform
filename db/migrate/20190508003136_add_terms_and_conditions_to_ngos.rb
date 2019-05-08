class AddTermsAndConditionsToNgos < ActiveRecord::Migration[5.2]
  def change
    add_column :ngos, :terms_and_conditions, :text
  end
end
