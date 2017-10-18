class BookController < ApplicationController

   def list
      @books = Book.all
   end

   def show
      @book = Book.find(params[:id])
   end
  
   def new
      @book = Book.new
      
   end

   def book_params
      params.require(:books).permit(:title, :author, :category, :pages, :publisher, :price)
   end
   
   def create
      @book = Book.new(book_params)

      if @book.save
         redirect_to :action => 'list'
      else
         render :action => 'new'
      end
   end
   
   def edit
      @book = Book.find(params[:id])
   end
   
   def book_param
      params.require(:book).permit(:title, :author, :category, :pages, :publisher, :price)
   end
   
   def update
      @book = Book.find(params[:id])
      
      if @book.update_attributes(book_param)
         redirect_to :action => 'show', :id => @book
      else
         render :action => 'edit'
      end
   end
   
   def delete
      Book.find(params[:id]).destroy
      redirect_to :action => 'list'
   end
end
