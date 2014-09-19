FactoryGirl.define do
  factory :vm_amazon do
    sequence(:name) { |n| "vm_#{n}" }
    location        { |x| "#{x.name}/#{x.name}.xml" }
    uid_ems         { MiqUUID.new_guid }
    vendor          "amazon"
    template        false
    raw_power_state "running"
    cloud           true
  end
end
