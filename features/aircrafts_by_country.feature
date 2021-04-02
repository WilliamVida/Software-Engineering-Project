Feature: display list of aircrafts sorted by different criteria
    I want to find aircraft by the same country

Background: aircrafts have been added to database
    Given the following aircrafts exist:
    | name                        | role         | country        | year |
    | Supermarine Spitfire        | Fighter      | United Kingdom | 1938 |
    | Messerschmitt Me 262        | Fighter      | Germany        | 1944 |
    | Boeing B-17                 | Heavy-Bomber | United States  | 1938 |
    | North American P-51 Mustang | Fighter      | United States  | 1942 |
    | Boeing B-29                 | Heavy-Bomber | United States  | 1944 |
    | Mitsubishi A6M Zero         | Fighter      |                | 1940 |

Scenario: find aircraft by the same country
    Given I am on the details page for "North American P-51 Mustang"
    When  I follow "Find Aircraft by the Same Country"
    Then  I should be on the aircraft developed by the same country page for "North American P-51 Mustang"
    And   I should see "Boeing B-17"
    And   I should see "Boeing B-29"
    But   I should not see "Supermarine Spitfire"
    And   I should not see "Messerschmitt Me 262"
    And   I should not see "Mitsubishi A6M Zero"

Scenario: can't find aircraft developed by the same country if we don't know the country (sad path)
    Given I am on the details page for "Mitsubishi A6M Zero"
    Then  I should not see "Japan"
    When  I follow "Find Aircraft by the Same Country"
    Then  I should be on the home page
    And   I should see "Aircraft 'Mitsubishi A6M Zero' has no country info."
