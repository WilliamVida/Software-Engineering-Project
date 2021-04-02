Feature: display list of aircraft filtered by role
    I want to see aircraft filtering by their role

Background: aircrafts have been added to database
    Given the following aircrafts exist:
    | name                        | role         | country        | year |
    | Heinkel He 177 Greif        | Heavy-Bomber | Germany        | 1942 |
    | Gloster Meteor              | Fighter      | United Kingdom | 1944 |
    | Ilyushin Il-2               | Attacker     | Soviet Union   | 1941 |
    | Arado Ar 234                | Bomber       | Germany        | 1944 |
    | Boeing B-29                 | Heavy-Bomber | United States  | 1944 |
    | Messerschmitt Me 262        | Fighter      | Germany        | 1944 |

    And I am on the home page
    Then 6 seed aircrafts should exist

Scenario: restrict to aircraft with 'Fighter' or 'Bomber' or 'Attacker' roles
    Given I check the following roles: Fighter, Bomber, Attacker
    And I press "Refresh"

    Then I should see "Gloster Meteor"
    And I should see "Arado Ar 234"
    And I should see "Ilyushin Il-2"
    And I should see "Messerschmitt Me 262"
    
    And I should not see "Heinkel He 177 Greif"
    And I should not see "Boeing B-29"

Scenario: all roles selected
    Given I check the following roles: Attacker, Bomber, Dive-Bomber, Fighter, Heavy-Bomber
    And I press "Refresh"
    Then I should see all the aircrafts
