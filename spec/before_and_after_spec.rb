RSpec.describe 'before and after hooks' do
    # will run once before everything 
    before(:context) do
        puts 'Before context'
    end 
    #will run once after everything
    after(:context) do
        puts 'After context'
    end
    # will run before each block(each example)
    before(:example) do
        puts 'Before example'
    end
    # will run after each block (example)
    after(:example) do
        puts 'After example'
    end

    it 'is just a random example' do
        expect(5 * 4).to eq(20)
    end

    it 'is just another random example' do
        expect(3 - 2).to eq(1)
    end

end
