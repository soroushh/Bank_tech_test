require 'account.rb'
describe Account do
  let(:subject){described_class.new()}
  let(:subject_2){described_class.new(1000)}
  it 'we are able to make an account' do
    expect(subject.show_balance).to eq 0
  end

  describe '#add_deposite' do
    it ' When we add dopiste, the balance of account gets more' do
      subject.add_deposite(500,"14/01/2012")
      expect(subject.show_balance).to eq 500
    end
  end

  describe '#withdraw' do
    it 'When we withdraw from an account, the balance of account gets less' do
      subject_2.withdraw(500, "14/01/2012")
      expect(subject_2.show_balance).to eq 500
    end
  end
  
end
