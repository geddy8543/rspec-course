RSpec.describe 'nested hooks' do
    before(:context) do                 # 1
        puts 'OUTER Before context'
    end

    before(:example) do                  # 2  5  8
        puts 'OUTER Before example'
    end

    it 'does basic math' do              # 3
        expect(1 + 1).to eq(2)
    end

    context 'with condition A' do
        before(:context) do               # 4
            puts 'INNER Before context'
        end
    
        before(:example) do               # 6  9
            puts 'INNER Before example'
        end

        it 'does some more basic math' do   # 7
            expect(1 + 1).to eq(2)
        end

        it 'does subtraction as well' do  # 10
            expect(5 - 3).to eq(2)
        end
    end


end