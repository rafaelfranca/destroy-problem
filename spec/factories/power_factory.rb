# Generates action names from sequence number. Number is
# converted into a-z system. The result has form of
# /^action_([a-z]+)$/.
#
# @param number [Integer] sequence number
# @return [String] generated action name
def number_to_action(number)
  code = number.to_i.to_s(26).tr('0-9a-q', 'a-z')
  "action_#{code}"
end

FactoryGirl.define do
  factory :power do |power|
    power.module 'um'
    power.resource 'users'
    power.sequence(:action) { |n| number_to_action(n) }
  end
end
