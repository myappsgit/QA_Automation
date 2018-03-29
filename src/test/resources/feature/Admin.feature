Feature: Admin

    Background:
        Given I am logged into the application with user "admin@huddil.com" and password "password"
        And the "Admin" page should load
        And I wait "3" seconds

    @Sanity
    Scenario: Verify Payment Status on Dashboard
        And I select "2017" from the "SelectYear" dropdown
        And I select "March" from the "SelectMonth" dropdown

    @Sanity
    Scenario: Verify Payment Details using search in Payments
        When I click the "Payments" element
        And I select "February" from the "SelectMonth" dropdown
        And I select "2017" from the "SelectYear" dropdown
        And I select "Bangalore" from the "AllCities" dropdown
        And I enter "aparna.b@myapps-solutions.com" in the "ServiceProvider" field
        And I click the "PaymentsSearch" button

    @Sanity
    Scenario: Verify Search & Block Users in Users
        When I click the "Users" element
        And I enter "aparna.b@myapps-solutions.com" in the "NameMail-id" field
        And I select "Service Provider" from the "selectUserType" dropdown
        And I click the "Find" button
        And I click the "ActiveBlock" button

    @Sanity
    Scenario: Verify Search & Activate Users in Users
        When I click the "Users" element
        And I enter "aparna.b@myapps-solutions.com" in the "NameMail-id" field
        And I select "Service Provider" from the "selectUserType" dropdown
        And I click the "Find" button
        And I click the "ActiveBlock" button

    @Sanity
    Scenario: Verify Adding "New Adviser"
        When I click the "Users" element
        And I click the "NewAdviser" button
        And I enter "Rajchinna" in the "AdviserName" field
        And I enter "shkurzz@yahoo.com" in the "AdviserEmail" field
        And I enter "9704687809" in the "AdviserMobileNo" field
        And I enter "Raj@123456" in the "AdviserPWD" field
        And I click the "Save" button
        And I wait "3" seconds
        And I click the "OK2" button

    @Sanity
    Scenario: Verify Search Facility
        When I click the "Facilities" element
        And I enter "a" in the "SearchFacility" field
        And I select "Locality" from the "SearchFor" dropdown
        And I wait "5" seconds
        And I select "Conference Room" from the "searchType" dropdown
        And I click the "SearchButton" button
        And I wait "3" seconds

    @Sanity
    Scenario: Verify Search & Block Facility
        When I click the "Facilities" element
        And I enter "a" in the "SearchFacility" field
        And I select "Locality" from the "SearchFor" dropdown
        And I wait "5" seconds
        And I select "Conference Room" from the "searchType" dropdown
        And I click the "SearchButton" button
        And I wait "10" seconds
        And I select the facility "Confo_BTM"
        And I wait "3" seconds
        And I click the "BlockUnblock" button
        And I click the "OK2" button
        And I wait "2" seconds

    @Sanity
    Scenario: Verify Search & Activate Facility
        And I click the "Terms" element
        When I click the "Facilities" element
        And I enter "a" in the "SearchFacility" field
        And I select "Locality" from the "SearchFor" dropdown
        And I select "Conference Room" from the "searchType" dropdown
        And I click the "SearchButton" button
        And I wait "10" seconds
        And I select the facility "Confo_BTM"
        And I click the "BlockUnblock" button
        And I click the "OK2" button
        And I wait "2" seconds

    @Sanity
    Scenario: Verify Adding Policy
        When I click the "Terms" element
        And I click the "+AddPolicy" button
        And I enter "2018-02-14" in the "AdviserDate" field
        And I select "Service Provider" from the "UserType" dropdown
        And I click the "FileUpload" button
        And I upload the "PolicyHTML" file
        And I wait "10" seconds
        And I click the "Save" button
        And I click the "OK2" button

    @Sanity
    Scenario: Verify Adding Amenity
        When I click the "Amenities" element
        And I click the "AddAmenity" button
        Then I enter value in the text field "Svg Text" from text file "fileread"
        And I enter "Report Problem" in the "AmenityName" field
        And I click the "Save" button
        And I click the "OK2" button

    @Sanity
    Scenario: Verify Adding City
        When I click the "Locations" element
        And I click the "AddCity" button
        And I enter "Jaipur" in the "CityName" field
        And I click the "Save" button
        And I click the "OK2" button

    @Sanity
    Scenario: Verify FB Login
        When I click the "facebook" element
        And I switch to "new" window
        And I wait "4" seconds
        And I enter "email" in the "FacebookUsername" field
        And I enter "password" in the "FacebookPassword" field
        And I click the "Facebookloginbutton" button
        And I close the window

    @Sanity
    Scenario: Verify LinkedIn Login
        When I click the "LinkedIn" element
        And I wait "1" second
        And I switch to "new" window
        And I wait "3" seconds
        And I click the "Sign in" link
        And I wait "4" seconds
        And I enter "rajashekar@gmail.com" in the "linkedInUsername" field
        And I enter "Raj" in the "LinkedInPassword" field
        And I click the "LinkedInsigninbutton" button
        And I close the window
        And I click the "LinkedIn" element

    @Sanity
    Scenario: Verify Google Login
        When I click the "Googleplus" element
        And I wait "5" seconds
        And I switch to "new" window
        And I wait "3" seconds
        And I click the "GoogleSigninbutton" button
        And I enter "rajash@gmail.com" in the "GoogleUsername" field
        And I click the "Next" button
        And I enter "ddgg" in the "GooglePassword" field
        And I click the "Next" button
        And I close the window

    @Sanity
    Scenario: Verify Logout
        When I click the "UserProfile" element
        And I click the "Logout" element
        And I click the "OK" button

    @Sanity
    Scenario: Verify Twitter Login
        When I click the "Twitter" element
        And I switch to "new" window
        And I wait "3" seconds
        And I click the "Have an account?" link
        And I enter "raj@email.com" in the "TwitterUsername" field
        And I enter "pass" in the "Twitter" in the "TwitterPassword" field
        And I close the window
