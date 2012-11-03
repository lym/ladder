ActiveAdmin.register Match do
  index do
    column :challenger
    column :opponent
    column :match_date
    column :created_at
    column :updated_at
    default_actions
  end
end
