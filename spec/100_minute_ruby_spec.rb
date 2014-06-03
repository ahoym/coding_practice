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
    end
  end
end