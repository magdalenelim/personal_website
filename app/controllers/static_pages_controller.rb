class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def projects
  end

  def resume
    # send_file('/Users/magdalenelim/Desktop/rails_apps/personal_website/app/assets/', :filename => 'Resume-1copy.pdf', :disposition => 'inline', :type => "application/pdf") 
    pdf
  end

  def contact
  end

  def pdf
    pdf_filename = File.join(Rails.root, "app/assets/Resume-1copy.pdf")
    send_file(pdf_filename, :filename => "Resume-1copy.pdf",:disposition => 'inline', :type => "application/pdf")
  end

end
