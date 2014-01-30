require 'spec_helper'

describe Role do
  context 'error' do
    it 'fails' do
      role = create(:role, powers: [create(:power)])
      expect(role.powers.count).to eq(1)

      affiliation = role.affiliation

      expect {
        role = Role.includes(:powers).where(affiliation_id: affiliation.id).find(role.id).destroy
      }.not_to raise_error
    end
  end

  context 'ok' do
    it 'works' do
      role = create(:role)
      expect(role.powers.count).to eq(0)

      affiliation = role.affiliation

      expect {
        role = Role.includes(:powers).where(affiliation_id: affiliation.id).find(role.id).destroy
      }.to_not raise_error
    end
  end
end
