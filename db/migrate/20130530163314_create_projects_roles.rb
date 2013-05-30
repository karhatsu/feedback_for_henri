class CreateProjectsRoles < ActiveRecord::Migration
  def change
    create_table :projects_roles, primary_key: false do |t|
      t.references :project, index: true
      t.references :role
    end
    
    Project.all.each do |project|
      project.roles = Role.all
    end
  end
end
