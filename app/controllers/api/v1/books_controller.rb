class Api::V1::BooksController < ApplicationController

  def index
    books = Book.all

    render json: books,
           message: 'ok',
           status: 200,
           each_serializer: ::BookSerializer, root: false
  end

  def create
    book = Book.new(book_params)

    if book.save!

      render json: book,
             message: 'created',
             status: 201
    else
      render json: { error: "check values again"}
    end
  end

  def show
    book = Book.find(params[:id])

    render json: book,
           message: 'ok',
           status: 200,
           serializer: ::BookSerializer, root: false
  end

  def update
    book = Book.find(params[:id])

    if book.update!(lastCheckedOutBy: params[:lastCheckedOutBy],
                    lastCheckedOut: Time.now)

      render json: book,
             message: 'ok',
             status: 200,
             serializer: ::BookSerializer, root: false
    end
  end

  def destroy
    book = Book.find(params[:id])

    if book.delete
      render  message: "No content",
              status: 204
    end
  end

  def clean
    book = Book.all

    if book.delete_all
      render message: 'ok', status: 200
    end
  end

  private

  def book_params
    params.require(:book).permit(:author, :categories, :publisher, :title)
  end
end
