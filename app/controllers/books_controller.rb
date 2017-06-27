class BooksController < ApplicationController

def index
  @books = Book.all

  respond_to do |format|
    format.html
    format.text

    format.csv do
      render plain: @books.generate_csv(@books)

        }
      end
    end


  end
end

end
