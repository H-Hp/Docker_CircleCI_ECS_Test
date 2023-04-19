class ContactsController < ApplicationController
  def index
    # 一覧表示の処理
    @contacts = Contact.all
  end

  def show
    # 詳細表示の処理
  end

  def new
    # 新規作成フォーム表示の処理
    @contact = Contact.new
  end

  def create
    # 新規作成の処理
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to @contact, notice: 'Contact was successfully created.'
    else
      render :new
    end
  end

  def edit
    # 編集フォーム表示の処理
  end

  def update
    # 更新の処理
  end

  def destroy
    # 削除の処理
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
