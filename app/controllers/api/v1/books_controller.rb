class Api::V1::BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.create(title: params[:title], author_first_name: params[:author_first_name], author_last_name: params[:author_last_name], page_count: params[:page_count], rating: params[:rating], genre: params[:genre])
    render :show
  end

  def edit
  end

  def update
    @book = Book.find(params[:id])
    @book.update(title: params[:title], author_first_name: params[:author_first_name], author_last_name: params[:author_last_name], page_count: params[:page_count], rating: params[:rating], genre: params[:genre])
    render :show
    # redirect_to "/books/#{@book.id}"
  end

  def destroy
    Book.find(params[:id]).destroy
    format.json {render json: "Book Removed."}
  end
end
