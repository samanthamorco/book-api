class Api::V1::BooksController < ApplicationController

  def index
    @books = Book.all
    if params[:search]
      search_term = params[:search]
      @books = Book.where("title LIKE ?", "%#{search_term}%")
      render :index
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    # @book = Book.create(title: params[:title], author_first_name: params[:author_first_name], author_last_name: params[:author_last_name], page_count: params[:page_count], rating: params[:rating], genre: params[:genre])
    @book = Book.new(title: params[:title], author_first_name: params[:author_first_name], author_last_name: params[:author_last_name])
    if @book.save
      render json: @book
    else
      render json: { errors: @book.errors.full_messages}, status: 422
    end
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

  # def search
  #   search_term = params[:search]
  #   @books = Book.where("title LIKE ?", "%#{search_term}%", "%#{search_term}%")
  # end
end
