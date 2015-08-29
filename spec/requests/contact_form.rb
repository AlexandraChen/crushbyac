require 'spec/spec_helper'

  describe "ContactForm" do
    it "delivers a valid message" do
      visit new_contact_form_path
      fill_in 'Name', :with => 'Aaron Sumner'
      fill_in 'Email', :with => 'aaron@everydayrails.com'
      fill_in 'Message', :with => 'What a great website.'
      click_button 'Send message'
      page.body.should have_content('Thank you for your message')
      last_email.to.should include('help@everydayrails.com')
      last_email.from.should include('aaron@everydayrails.com')
    end

    it "does not deliver a message with a missing email" do
      visit new_contact_form_path
      fill_in 'Name', :with => 'Aaron Sumner'
      fill_in 'Message', :with => 'What a great website.'
      click_button 'Send message'
      page.body.should have_content("Email can't be blank")
      last_email.should be_nil
    end

    it "does not deliver spam" do
      pending "This does not appear to render the proper source but passes in a browser."
      visit new_contact_form_path
      fill_in 'Name', :with => 'Aaron Sumner'
      fill_in 'Email', :with => 'spammer@spammyjunk.com'
      fill_in 'Message', :with => "All the junk you'll never need."
      fill_in 'Nickname', :with => 'Want to buy some boots?'
      click_button 'Send message'
      page.body.should have_content('this message appears to be spam')
      last_email.should be_nil
    end
  end