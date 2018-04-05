class EntriesController < ApplicationController

  def new
  end

  def create
    @entry = Entry.new(diary_params)

    if @entry.save
      redirect_to @entry
    else
      render 'new' #issue same request, the same article object is passed again
      #redirect_to new request is issued.
    end

  end

  def update
    @entry = Entry.find(params[:id])

    if @entry.update(diary_params)
      redirect_to @entry
    else
      render 'edit'
    end
  end

  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy

    redirect_to entries_path
  end
  
  private

  def diary_params
    params.require(:entry).permit(:date, :note)
  end


end
