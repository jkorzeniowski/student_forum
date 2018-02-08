class SessionsController < ApplicationController
  def	create
				student	=	Student.find_by(index:	params[:session][:index])
				if	student	&&	student.authenticate(params[:session][:password])
							#	dobrze
              log_in student
              redirect_to student
				else
				      #	zle
				      render	'new'
				end
  end
  def	destroy
		log_out
		redirect_to	root_url
  end
end
