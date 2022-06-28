RSpec.describe Array do
   subject(:sally) { [2, 4] }
   
   it 'catches the object with an example' do
    expect(subject.length).to eq(2)
    subject.pop
    expect(subject.length).to eq(1)
   end

   it 'creates a new object for a new example' do
    expect(sally).to eq([2, 4])
   end
end

# Assignment was to create an example group with an argument of array
# Invoke the subject method outside of any example
# Give the subject a name of :sally
# Inside the block declare a 2 element array with bracket syntax
# Add an example that tests that the subject has a length of 2
# Invoke the pop method to remove an element from the subject array
# Write another assertion to check that the length of the array is now 1
# In a second example, write an assertion to confirm sally is equal to the original array