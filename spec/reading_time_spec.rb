require 'reading_time'

RSpec.describe "reading_time method" do
  context "a string of words is passed to the method" do
    it "returns the time in seconds" do
      text = "hello world hello world"
      expect(reading_time(text)).to eq "1.2 seconds"
    end

    it "returns the time in minutes and seconds if length longer than 200 words" do
      text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et nibh at erat luctus maximus. Nam condimentum mauris ac vehicula maximus. Maecenas tempus velit vulputate eros accumsan varius. Donec ullamcorper fringilla libero ac auctor. Vivamus tempor consectetur nulla, in egestas orci facilisis quis. Vivamus semper dolor dolor, ut scelerisque est varius sed. Sed vel vulputate ligula, eget imperdiet nisl. Sed dignissim vehicula mauris et aliquet. Sed et quam lobortis velit vestibulum tempor. Donec maximus, nibh eu commodo feugiat, urna arcu bibendum tortor, sed tempor libero dui nec sapien. Nunc turpis lacus, egestas quis pellentesque et, aliquet ac sem. Duis vitae tellus ac lectus ullamcorper euismod quis pulvinar purus. Etiam nec scelerisque leo. Pellentesque tincidunt ligula ex, eget maximus justo euismod eu. Curabitur tempus erat sagittis, tincidunt augue et, aliquam lorem. Donec condimentum erat volutpat libero vestibulum tristique. Pellentesque vestibulum nec felis vel ultrices. Aliquam ut ultricies ipsum. Phasellus malesuada ultricies dictum. Vestibulum euismod neque id lacus elementum bibendum. Vestibulum iaculis vel dui et dapibus. Sed in fermentum purus. Nunc euismod, nibh a elementum porttitor, nisl turpis rhoncus purus, nec fringilla urna nisi id purus. Proin maximus fringilla enim non mollis. Ut a tempor lorem, id feugiat nibh. Ut odio turpis."
      expect(reading_time(text)).to eq "1 minutes 0 seconds"
    end
  end
end
