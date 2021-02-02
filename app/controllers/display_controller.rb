class DisplayController < ApplicationController
def add_book
	@book = BookRecord.new
	
end

def create_book
	@book = BookRecord.new(book_params)
	if @book.save
		redirect_to(action: 'list_book')
	else
		flash[:notice] = "Error: Record not Created"
		render(action: 'add_book')
	end
end




def list_book
	@book = BookRecord.all
end

def view_book
	@book=BookRecord.find(params[:id])
end

def remove_book
	@book=BookRecord.find(params[:id])
end

def destroy
	bk=BookRecord.find(params[:id])
	bk.destroy
	redirect_to(action: 'list_book')
end


def edit_book
	@book=BookRecord.find(params[:id])
end

def update_book
	@book=BookRecord.find(params[:id])
	id=@book.id
	if @book.update_attributes(book_params)
		redirect_to(action:'list_book')
	else
		render('edit_book')
		
	end
end



def view_history
end


def view_feedback
end

def issue_book
end

def return_book
end





def book_params
	params.require(:book_records).permit(:title, :author, :price)
end

end

