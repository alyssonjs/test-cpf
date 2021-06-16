require 'spec_helper'

describe 'CPF Verificaion' do
    context 'with valid CPF' do
        it "when given '000.000.000-00', return true" do
            expect(verification('000.000.000-00')).to be_truthy
        end
    end

    context 'with invalid parameters' do

        it "when given invalid format, return false" do
            expect(verification('555,985.752,00')).to be_falsey
        end

        it "when given another invalid format, return false" do
            expect(verification('555.985.752.-00')).to be_falsey
        end

        it 'when given without pontuation, return false' do
            expect(verification('784584548454')).to be_falsey
        end

        it 'when given a integer, return false' do
            expect(verification(784584548454)).to be_falsey
        end

        it 'when given a letter inside the string, return false' do
            expect(verification('987.A56.T52-65')).to be_falsey
        end
    end
end