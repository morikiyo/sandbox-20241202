class MemosController < ApplicationController
  before_action :set_memo, only: %i[ show edit update destroy ]

  def index
    @memos = Memo.all
  end

  def show
  end

  def new
    @memo = Memo.new
  end

  def edit
  end

  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      redirect_to memos_path, status: :see_other, notice: "Memo was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @memo.update(memo_params)
      redirect_to memos_path, status: :see_other, notice: "Memo was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @memo.destroy!
    redirect_to memos_path, status: :see_other, notice: "Memo was successfully destroyed."
  end

  private

    def set_memo
      @memo = Memo.find(params.expect(:id))
    end

    def memo_params
      params.expect(memo: [ :body ])
    end
end
