RSpec.describe 'doubles' do
    it "tests the student's knowledge of the course's content" do
      student = double(connect: true, disconnect: 'Goodbye')
      expect(student.connect).to eq(true)
      expect(student.disconnect).to eq('Goodbye')

      fs = double("File System")
      allow(fs).to receive(:read).and_return("Romeo and Juliet")
      allow(fs).to receive(:write).and_return(false)
   
    end
  end