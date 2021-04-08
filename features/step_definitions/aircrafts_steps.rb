Given /the following aircrafts exist/ do |aircrafts_table|
    aircrafts_table.hashes.each do |aircraft|
        Aircraft.create aircraft
    end
end

Then /(.*) seed aircrafts should exist/ do | n_seeds |
    Aircraft.count.should be n_seeds.to_i
end

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
#     expect(page.body.index(e1) < page.body.index(e2))
    #page.body.index(e1) < page.body.index(e2)
     page.body.index(e1).should < page.body.index(e2)
end

Then /I should see all the aircrafts/ do
    Aircraft.all.each do |aircraft|
        step %{I should see "#{aircraft.name}"}
    end
end

Then(/^the country of "([^"]*)" should be "([^"]*)"$/) do |arg1, arg2|
    Aircraft.find_by_name(arg1).country == arg2
end

When /I (un)?check the following roles: (.*)/ do |uncheck, role_list|
    role_list.split(", ").each do |role|
        if uncheck
            step "I uncheck \"roles_#{role}\""
        else 
            step "I check \"roles_#{role}\""
        end
    end
end
