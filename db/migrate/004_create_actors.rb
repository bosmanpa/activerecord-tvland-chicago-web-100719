class CreateActors < ActiveRecord::Migration[5.2]
    create_table :actors do |t|
        t.string :first_name
        t.string :last_name
    end

    def list_roles
        self.characters.map {|c| "#{c.name} - #{c.show.name}"}
    end
end