require_relative '../100_minute_ruby'
require_relative './spec_helper'

describe "PersonalChef" do
  subject(:chef) do
    PersonalChef.new
  end
  
  context "when making food," do
    describe "#make_toast" do
      it "should return how dark you want your toast" do
        output = capture_stdout { chef.make_toast('brown') }
        expect(output).to eq('Making your toast brown!')
      end
    
      it "should question you when no color is given" do
        output = capture_stdout { chef.make_toast }
        expect(output).to eq('How am I supposed to make nothingness toast?')
        
        output = capture_stdout { chef.make_toast('') }
        expect(output).to eq('How am I supposed to make nothingness toast?')
      end
      
      it "should be able to be made into wacky colors" do
        output = capture_stdout { chef.make_toast('green') }
        expect(output).to eq('Making your toast green!')
      end
    end
    
    describe "#make_eggs" do
      it "should return how many eggs you want" do
        output = capture_stdout { chef.make_eggs(10) }
        expect(output).to eq("Making an egg.\nMaking an egg.\nMaking an egg.\nMaking an egg.\nMaking an egg.\nMaking an egg.\nMaking an egg.\nMaking an egg.\nMaking an egg.\nMaking an egg.\nMade you 10 eggs!")
      end
      
      it "should question you if you don't specify a number" do
        output = capture_stdout { chef.make_eggs('cheese') }
        expect(output).to eq("That's not a number, boss!")
      end
      
      it "should question you if you don't specify a number (blank)" do
        output = capture_stdout { chef.make_eggs() }
        expect(output).to eq("That's not a number, boss!")
      end
    end
    
    describe "#make_milkshake" do
      it "should make you a flavored milkshake" do
        output = capture_stdout { chef.make_milkshake('strawberry') }
        expect(output).to eq("Making your strawberry milkshake!")
      end
      
      it "should question you don't tell him a String type flavor" do
        output = capture_stdout { chef.make_milkshake(0) }
        expect(output).to eq("That's not a milkshake flavor I can make!")
      end
    end
  end

  context "when you ask for" do
    describe "#good_morning" do
      it "should tell you the day of the week, and what day it is of the year" do
        output = capture_stdout { chef.good_morning }
    		today = Date.today.strftime("%A")
    		day_of_year = Date.today.yday
        
        expect(output).to eq("Happy #{today}, it's the #{day_of_year} day of 2014!")
      end
    end
  end
end