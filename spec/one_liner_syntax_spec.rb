RSpec.describe 'shorthand syntax' do
    subject { 5 }

    context 'with classic syntax' do
        it 'should equal 5' do
            expect(subject).to eq(5)
        end
    end

    # still invoke the 'it' method, don't need string, use is_expected instead
    context 'with one-liner syntax' do
        it { is_expected.to eq(5) }
    end

end