Feature: display list of aircraft sorted by different criteria
    I want to see aircraft sorted by name, role, country or year

Background: aircrafts have been added to database
    Given the following aircrafts exist:
    | name                        | role         | country        | year |
    | Heinkel He 177 Greif        | Heavy-Bomber | Germany        | 1942 |
    | Gloster Meteor              | Fighter      | United Kingdom | 1944 |
    | Ilyushin Il-2               | Attacker     | Soviet Union   | 1941 |
    | Arado Ar 234                | Bomber       | Germany        | 1944 |
    | Grumman F6F Hellcat         | Fighter      | United States  | 1943 |
    | North American F-86 Sabre   | Fighter      | United States  | 1949 |

    And I am on the home page
    Then 6 seed aircrafts should exist

Scenario: sort aircraft alphabetically
    When I follow "Name"
    Then I should see "Arado Ar 234" before "Gloster Meteor"
    Then I should see "Grumman F6F Hellcat" before "Heinkel He 177 Greif"
    Then I should see "Ilyushin Il-2" before "North American F-86 Sabre"

Scenario: sort aircraft by role
    When I follow "Role"
    Then I should see "Ilyushin Il-2" before "Arado Ar 234"
    Then I should see "Gloster Meteor" before "Grumman F6F Hellcat"
    Then I should see "North American F-86 Sabre" before "Heinkel He 177 Greif"

Scenario: sort aircraft by country
    When I follow "Country"
    Then I should see "Heinkel He 177 Greif" before "Arado Ar 234"
    Then I should see "Ilyushin Il-2" before "Gloster Meteor"
    Then I should see "Grumman F6F Hellcat" before "North American F-86 Sabre"

Scenario: sort aircraft by year
    When I follow "Year"
    Then I should see "Ilyushin Il-2" before "Heinkel He 177 Greif"
    Then I should see "Grumman F6F Hellcat" before "Arado Ar 234"
    Then I should see "Gloster Meteor" before "North American F-86 Sabre"
