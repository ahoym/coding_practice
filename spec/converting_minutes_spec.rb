require_relative '../converting_minutes'

describe "#converting_minutes" do
  it "should return the number of minutes between two given times" do
    expect(converting_minutes("9:00am-10:00am")).to eq(60)
    expect(converting_minutes("9:00am-11:00am")).to eq(120)
    expect(converting_minutes("9:20am-12:00am")).to eq(160)
  end
  
  it "should be able to convert pm times as well" do
    expect(converting_minutes("3:00pm-5:00pm")).to eq(120)    
    expect(converting_minutes("3:00am-1:00pm")).to eq(600)
    expect(converting_minutes("3:00am-3:00pm")).to eq(720)
  end
  
  it "should be able to convert around the clock" do
    expect(converting_minutes("1:00pm-11:00am")).to eq(1320)
    expect(converting_minutes("11:59pm-11:58pm")).to eq(1439)
  end
  
  it "should raise an error if no string is given" do
    expect { converting_minutes() }.to raise_error
  end
  
  it "should raise an error if the str is not in the correct format" do
    expect { converting_minutes("trollol") }.to raise_error
    expect { converting_minutes("1:00em-2:00em") }.to raise_error
  end
end