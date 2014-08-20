class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  before_action :set_author
  before_action :set_menu

  # GET /books
  # GET /books.json
  def index
    @books = Book.order(sort_column + " " + sort_direction)
  end

  # GET /books/1
  # GET /books/1.json
  def show
    @menu1 = { text: "New Book for #{@author.name}", path: "/authors/#{@author.id}/books/new" }
  end

  # GET /books/new
  def new
    if @author == nil
      respond_to do |format|
        format.html { redirect_to authors_path, notice: 'Choose Author before adding book.' }
      end
    end
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
    @menu1 = { text: "New Book for #{@author.name}", path: "/authors/#{@author.id}/books/new" }
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to author_path(@book.author_id), notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to author_path(@book.author_id), notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    author = @book.author_id
    @book.destroy
    respond_to do |format|
      format.html { redirect_to author_path(author), notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    def set_author
      if params[:author_id]
        author = params[:author_id]
      elsif params[:book]
        book = params[:book]
        if book[:author_id]
          author = book[:author_id]
        end
      end
      if author.blank?
        if params[:id]
          set_book
          author = @book.author_id
        end
      end

      if author
        @author = Author.where("id = ?", author).first
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :description, :year_published, :read_date, :author_id)
    end

    def set_menu
      @menu1 = { text: 'New Book', path: '/books/new' }
      @menu2 = { text: 'New Author', path: '/authors/new' }
    end

    def sort_column
      params[:sort] ||= 'id'
    end

    def sort_direction
      params[:direction] || 'asc'
    end
end
