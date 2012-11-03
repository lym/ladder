ActiveAdmin.register Player do
  index do
    column :ladder_rank
    column :first_name
    column :last_name
    column :phone_number
    column :email
    column :amount_paid
    column :balance
    default_actions
  end
  filter :first_name
  filter :last_name
  filter :phone_number
  filter :email
  filter :amount_paid
  filter :balance
  filter :ladder_rank
  
end
