<<<<<<< HEAD

module ControllerMacros
    def login_admin
      before(:each) do
        CashMachine.create(id: 1)
        @request.env["devise.mapping"] = Devise.mappings[:user]
        sign_in FactoryBot.create(:user, user_is_admin: true) # Using factory bot as an example
      end
    end
  
    def login_user
      before(:each) do
        @request.env["devise.mapping"] = Devise.mappings[:user]
        user = FactoryBot.create(:user)
        #user.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
        sign_in user
      end
    end
  end
=======
module ControllerMacros
  def login_admin
    before(:each) do
      CashMachine.create(id: 1)
      @request.env['devise.mapping'] = Devise.mappings[:user]
      sign_in FactoryBot.create(:user, user_is_admin: true) # Using factory bot as an example
    end
  end

  def login_user
    before(:each) do
      @request.env['devise.mapping'] = Devise.mappings[:user]
      user = FactoryBot.create(:user)
      # user.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
      sign_in user
    end
  end
end
>>>>>>> upstream/main
