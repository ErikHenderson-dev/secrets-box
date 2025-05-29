# frozen_string_literal: true

class MySecretsController < ApplicationController
  layout 'authenticated'
  before_action :set_my_secret, only: [:show, :edit, :update, :destroy]

  def index
    @my_secrets = current_user.my_secrets.order(created_at: :desc)
  end

  def show
  end

  def new
    @my_secret = current_user.my_secrets.build
  end

  def create
    @my_secret = current_user.my_secrets.build(my_secret_params)

    if @my_secret.save
      redirect_to my_secrets_path, notice: 'Senha/arquivo salvo com sucesso.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @my_secret.update(my_secret_params)
      redirect_to my_secrets_path, notice: 'Senha/arquivo atualizado com sucesso.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @my_secret.destroy
    redirect_to my_secrets_path, notice: 'Senha/arquivo removido com sucesso.'
  end

  private

  def set_my_secret
    @my_secret = current_user.my_secrets.find(params[:id])
  end

  def my_secret_params
    params.require(:my_secret).permit(:title, :description, :username, :password, :url, :category, files: [])
  end
end 