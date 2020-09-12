RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == CancanCan ==
  config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true
  config.model Product do
    create do
      field  :name
      field  :price
      field  :status

      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end
    end

    edit do
      field  :name
      field  :price
      field  :status
      
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end
    end
  end
  
  config.model ProductSale do
    create do
      field :product_id, :enum do
        enum do
          Product.products_active.collect{|c| [c.name, c.id]}
        end
      end
      field  :sale
      field  :quantity
      field  :value do 
        required = true
      end  
   
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end
    end

    edit do
      field :product_id, :enum do
        enum do
          Product.products_active.collect{|c| [c.name, c.id]}
        end
      end
      field  :sale
      field  :quantity
      field  :value do 
        required = true
      end
   
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end
    end
  end

  config.model Sale do
    create do
      field :data
      field :client_id, :enum do
        enum do
          Client.clients_active.collect{|c| [c.name, c.id]}
        end
      end
    end
  end

  config.model User do
    exclude_fields :created_at, :updated_at, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at
  end
  
  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
