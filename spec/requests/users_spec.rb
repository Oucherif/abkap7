require 'spec_helper'

describe "Users" do
  
  describe "signup" do
    
    describe "failure" do
    
      it "should not make a new user" do
        lambda do
          visit signup_path
          fill_in "Name",         :with => ""
          fill_in "E-Mail",        :with => ""
          fill_in "Passwort",     :with => ""                            #Übersetzt
          fill_in "Passwortwiederholung", :with => ""                    #Übersetzt
          fill_in "Authentifizierungsschl\u00FCssel",    :with => ""                            #Schlüssel angefügt
          click_button
          response.should render_template('users/new')
          response.should have_selector("div#error_explanation")
        end.should_not change(User, :count)
      end
    end

    describe "success" do

      it "should make a new user" do
        lambda do
          visit signup_path
          fill_in "Name",         :with => "Example User"
          fill_in "E-Mail",        :with => "user@example.com"
          fill_in "Passwort",     :with => "foobar"                     #Übersetzt
          fill_in "Passwortwiederholung", :with => "foobar"             #Übersetzt
          fill_in "Authentifizierungsschl\u00FCssel",    :with => "abc"                        #Schlüssel angefügt
          click_button
          response.should have_selector("div.flash.success",
                                        :content => "Willkommen")       #Übersetzt
          response.should render_template('users/show')
        end.should change(User, :count).by(1)
      end
    end
  end
end