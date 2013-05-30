# encoding: UTF-8
class AddQuestionToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :question, :string, :null => false,
      :default => 'Kuinka todennäköisesti suosittelisit minua kollegallesi johonkin toiseen projektiin?'
  end
end
