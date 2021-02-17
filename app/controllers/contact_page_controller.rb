class ContactPageController < ApplicationController
  def contacts
    #render plain: params[:contact].inspect
    @contact = User.new(contact_params)
    @contact.save
    redirect_to :list
  end

  def list
    @contacts = User.all
  end

  def about

  end

  def new

  end

  private def contact_params
    params.require(:contact).permit(:name, :email, :comment)
  end

end
