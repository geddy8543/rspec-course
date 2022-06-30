class HotChocolate
    def drink
        'Delicious'
    end

    def discard
        'PLOP!'
    end

    def purchase(number)
        "Awesome, I just purchased #{number} more hot chocolate mugs!"
    end
end

RSpec.describe HotChocolate do
    it 'confirms that an object can respond to a method' do
        expect(subject).to respond_to(:drink)
        expect(subject).to respond_to(:drink, :discard)
    end

    it 'confirms and object can respond to a method with arguments' do
        expect(subject).to respond_to(:purchase)
        expect(subject).to respond_to(:purchase).with(1).argument
    end

    it { is_expected.to respond_to(:purchase, :discard) }
    it { is_expected.to respond_to(:purchase).with(1).argument }
end