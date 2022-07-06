# Write a compound expectation that asserts the string 'firetruck' starts with 'fire' and ends with 'truck'
RSpec.describe 'firetruck' do
    it 'tests for two matchers' do
        expect(subject).to start_with('fire').and end_with('truck')
    end
end

# Write a compound expectation that asserts the number 20 is even and responds to the times method
RSpec.describe 20 do
    it 'tests for even and times method' do
        expect(subject).to be_even.and respond_to(:times) #responds to the times method
    end
end

# Write a compound expectation that asserts that the array [4, 8, 15, 16, 23, 42] includes the value 42 and starts with the values 4, 8, 15
RSpec.describe [4, 8, 15, 16, 23, 42] do
    it 'tests for 42 and the values 4, 8, 15' do
        expect(subject).to include(42).and start_with(4, 8, 15)
    end
end