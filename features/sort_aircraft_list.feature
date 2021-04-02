Feature: display list of aircraft sorted by different criteria
    I want to see aircraft sorted by name, role, country or year

Background: aircrafts have been added to database
    Given the following aircrafts exist:
    | name                        | role         | country        | year |
    | Heinkel He 177 Greif        | Heavy Bomber | Germany        | 1942 |
    | Gloster Meteor              | Fighter      | United Kingdom | 1944 |
    | Ilyushin Il-2               | Attacker     | Soviet Union   | 1941 |
    | Arado Ar 234                | Bomber       | Germany        | 1944 |
    | Boeing B-29                 | Heavy Bomber | United States  | 1944 |
    | Messerschmitt Me 262        | Fighter      | Germany        | 1944 |

    And I am on the home page
    Then 6 seed aircrafts should exist

Scenario: sort aircraft alphabetically
    When I follow "Name"
    #Then I should see "Arado Ar 234" before "Boeing B-29"
    Then I should see "Boeing B-29" before "Arado Ar 234"
    Then I should see "Gloster Meteor" before "Heinkel He 177 Greif"
    Then I should see "Ilyushin Il-2" before "Messerschmitt Me 262"

Scenario: sort aircraft by role
    When I follow "Role"
    Then I should see "Ilyushin Il-2" before "Arado Ar 234"
    Then I should see "Gloster Meteor" before "Messerschmitt Me 262"
    Then I should see "Boeing B-29" before "Heinkel He 177 Greif"

Scenario: sort aircraft by country
    When I follow "Country"
    Then I should see "Arado Ar 234" before "Heinkel He 177 Greif"
    Then I should see "Messerschmitt Me 262" before "Ilyushin Il-2"
    Then I should see "Gloster Meteor" before "Boeing B-29"

Scenario: sort aircraft by year
    When I follow "Year"
    Then I should see "Ilyushin Il-2" before "Heinkel He 177 Greif"
    Then I should see "Arado Ar 234" before "Boeing B-29"
    Then I should see "Gloster Meteor" before "Messerschmitt Me 262"
