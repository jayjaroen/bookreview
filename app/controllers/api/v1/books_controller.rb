module Api
  module V1
    class BooksController < ApplicationController
      protect_from_forgery with: :null_session
      skip_before_action :verify_authenticity_token

      def index
        books = Book.all

        render json: BookSerializer.new(books, options).serializable_hash.to_json
      end

      def show
        book = Book.find_by(slug: params[:slug]) # this one find_by works, but for review need to use find

        render json: BookSerializer.new(book, options).serializable_hash.to_json
      end

      def create
        book = Book.new(book_params)
        if book.save
          render json: BookSerializer.new(book).serializable_hash.to_json
        else
          render json: { error: book.errors.messages }, status: 422 ## unprocessable entity
        end
      end

      def update
        book = Book.find_by(slug: params[:slug])

        if book.update(book_params)
          render json: BookSerializer.new(book, options).serializable_hash.to_json
        else
          render json: { error: book.errors.messages }, status: 422
        end
      end

      def destroy
        book = Book.find_by(slug: params[:slug])

        if book.destroy
          head :no_content
        else
          render json: { error: book.errors.messages }, status: 422
        end
      end

      private

      def book_params
        params.require(:book).permit(:name, :author, :image_url)
      end

      def options
        @options ||= { include: %i[reviews] }
      end
    end
  end
end
