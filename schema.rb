require 'active_record'
require_relative 'environment'
#
class CreateSodasTable < ActiveRecord::Migration[5.0]
  def up
    create_table :sodas do |t|
      t.string :name
      t.integer :sugar_content
      t.timestamps
    end
  end

  def down
    drop_table :sodas
  end
end

def main
  up_or_down = (ARGV[0] || :up).to_sym
  CreateSodasTable.migrate(up_or_down)
end

main if __FILE__ == $PROGRAM_NAME
