@Epic-Collateral_Investigation
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@NotImplemented
Feature: Collateral investigation initiation Screen Validation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0`

     #FeatureID-ACAUTOCAS-368
  Scenario Outline:Validate column header <column_header> is visible in CII
    When user selects the application of CII stage
    Then column header "<column_header>" is visible
    Examples:
      | column_header               |
      | Collateral Id               |
      | Collateral Number           |
      | Collateral Type             |
      | Last Verification Date      |
      | Current Verification Status |

  #FeatureID-ACAUTOCAS-368
  Scenario Outline:Validate <button> button is visible in CII
    When user selects the application of CII stage
    Then "<button>" is visible
    Examples:
      | button                           |
      | waive off all                    |
      | initiate valuation verification  |
      | waive off valuation verification |

    #FeatureID-ACAUTOCAS-368
  Scenario Outline:Validate <section> section is visible in CII screen for secondary collateral <collateral_type> and <collateral_sub_type> of <Loan_Type> application
    And application has "<collateral_type>" secondary collateral with collateral subtype as "<collateral_sub_type>"
    When user selects the "<Loan_Type>" application of CII stage
    And user selects initiate Valuation Verification
    Then "<section>" is visible
    Examples:
      | section      | collateral_type | collateral_sub_type                 | Loan_Type     |
      | Verification | property        | Builder Property Under Construction | home loan     |
      | Valuation    | property        | Builder Property Under Construction | home loan     |
      | Verification | property        | Ready Property                      | home loan     |
      | Valuation    | property        | Ready Property                      | home loan     |
      | Verification | property        | Construction On Land                | home loan     |
      | Valuation    | property        | Construction On Land                | home loan     |
      | Verification | property        | Plot + self construction            | home loan     |
      | Valuation    | property        | Plot + self construction            | home loan     |
      | Verification | property        | purchase a plot                     | home loan     |
      | Valuation    | property        | purchase a plot                     | home loan     |
      | Verification | asset           | Consumer Vehicle                    | home loan     |
      | Valuation    | asset           | Consumer Vehicle                    | home loan     |
      | Verification | asset           | Commercial Vehicle                  | home loan     |
      | Valuation    | asset           | Commercial Vehicle                  | home loan     |
      | Verification | asset           | Consumer Durable                    | home loan     |
      | Valuation    | asset           | Consumer Durable                    | home loan     |
      | Verification | asset           | Tractor                             | home loan     |
      | Valuation    | asset           | Tractor                             | home loan     |
      | Verification | asset           | Commercial Equipment                | home loan     |
      | Valuation    | asset           | Commercial Equipment                | home loan     |
      | Verification | gold            | ornament                            | home loan     |
      | Valuation    | gold            | ornament                            | home loan     |
      | Verification | deposit         | fixed deposit                       | home loan     |
      | Verification | deposit         | kisan vikas patra                   | home loan     |
      | Verification | deposit         | national saving certificate         | home loan     |
      | Valuation    | deposit         | fixed deposit                       | home loan     |
      | Valuation    | deposit         | kisan vikas patra                   | home loan     |
      | Valuation    | deposit         | national saving certificate         | home loan     |
      | Verification | insurance       | insurance                           | home loan     |
      | Valuation    | insurance       | insurance                           | home loan     |
      | Verification | land            | land                                | home loan     |
      | Valuation    | land            | land                                | home loan     |
      | Verification | property        | Builder Property Under Construction | auto loan     |
      | Valuation    | property        | Builder Property Under Construction | auto loan     |
      | Verification | property        | Ready Property                      | auto loan     |
      | Valuation    | property        | Ready Property                      | auto loan     |
      | Verification | property        | Construction On Land                | auto loan     |
      | Valuation    | property        | Construction On Land                | auto loan     |
      | Verification | property        | Plot + self construction            | auto loan     |
      | Valuation    | property        | Plot + self construction            | auto loan     |
      | Verification | property        | purchase a plot                     | auto loan     |
      | Valuation    | property        | purchase a plot                     | auto loan     |
      | Verification | asset           | Consumer Vehicle                    | auto loan     |
      | Valuation    | asset           | Consumer Vehicle                    | auto loan     |
      | Verification | asset           | Commercial Vehicle                  | auto loan     |
      | Valuation    | asset           | Commercial Vehicle                  | auto loan     |
      | Verification | asset           | Consumer Durable                    | auto loan     |
      | Valuation    | asset           | Consumer Durable                    | auto loan     |
      | Verification | asset           | Tractor                             | auto loan     |
      | Valuation    | asset           | Tractor                             | auto loan     |
      | Verification | asset           | Commercial Equipment                | auto loan     |
      | Valuation    | asset           | Commercial Equipment                | auto loan     |
      | Verification | gold            | ornament                            | auto loan     |
      | Valuation    | gold            | ornament                            | auto loan     |
      | Verification | deposit         | fixed deposit                       | auto loan     |
      | Verification | deposit         | kisan vikas patra                   | auto loan     |
      | Verification | deposit         | national saving certificate         | auto loan     |
      | Valuation    | deposit         | fixed deposit                       | auto loan     |
      | Valuation    | deposit         | kisan vikas patra                   | auto loan     |
      | Valuation    | deposit         | national saving certificate         | auto loan     |
      | Verification | insurance       | insurance                           | auto loan     |
      | Valuation    | insurance       | insurance                           | auto loan     |
      | Verification | land            | land                                | auto loan     |
      | Valuation    | land            | land                                | auto loan     |
      | Verification | property        | Builder Property Under Construction | personal loan |
      | Valuation    | property        | Builder Property Under Construction | personal loan |
      | Verification | property        | Ready Property                      | personal loan |
      | Valuation    | property        | Ready Property                      | personal loan |
      | Verification | property        | Construction On Land                | personal loan |
      | Valuation    | property        | Construction On Land                | personal loan |
      | Verification | property        | Plot + self construction            | personal loan |
      | Valuation    | property        | Plot + self construction            | personal loan |
      | Verification | property        | purchase a plot                     | personal loan |
      | Valuation    | property        | purchase a plot                     | personal loan |
      | Verification | asset           | Consumer Vehicle                    | personal loan |
      | Valuation    | asset           | Consumer Vehicle                    | personal loan |
      | Verification | asset           | Commercial Vehicle                  | personal loan |
      | Valuation    | asset           | Commercial Vehicle                  | personal loan |
      | Verification | asset           | Consumer Durable                    | personal loan |
      | Valuation    | asset           | Consumer Durable                    | personal loan |
      | Verification | asset           | Tractor                             | personal loan |
      | Valuation    | asset           | Tractor                             | personal loan |
      | Verification | asset           | Commercial Equipment                | personal loan |
      | Valuation    | asset           | Commercial Equipment                | personal loan |
      | Verification | gold            | ornament                            | personal loan |
      | Valuation    | gold            | ornament                            | personal loan |
      | Verification | deposit         | fixed deposit                       | personal loan |
      | Verification | deposit         | kisan vikas patra                   | personal loan |
      | Verification | deposit         | national saving certificate         | personal loan |
      | Valuation    | deposit         | fixed deposit                       | personal loan |
      | Valuation    | deposit         | kisan vikas patra                   | personal loan |
      | Valuation    | deposit         | national saving certificate         | personal loan |
      | Verification | insurance       | insurance                           | personal loan |
      | Valuation    | insurance       | insurance                           | personal loan |
      | Verification | land            | land                                | personal loan |
      | Valuation    | land            | land                                | personal loan |

    #verification
      #FeatureID-ACAUTOCAS-368
  Scenario Outline:Validate <Field_Name> <Field_Type> is visible in verification section of CII for secondary collateral <collateral_type> and <collateral_sub_type> of <Loan_Type> application
    And application has "<collateral_type>" secondary collateral with collateral subtype as "<collateral_sub_type>"
    When user selects the "<Loan_Type>" application of CII stage
    And user selects initiate Valuation Verification
    And user adds a verification entry
    Then "<Field_Name>" "<Field_Type>" is visible
    Examples:
      | Field_Name            | Field_Type | collateral_type | collateral_sub_type                 | Loan_Type |
      | Verification Type     | Dropdown   | property        | Builder Property Under Construction | home loan |
      | Agency                | Dropdown   | property        | Builder Property Under Construction | home loan |
      | Add                   | Icon       | property        | Builder Property Under Construction | home loan |
      | Delete                | Icon       | property        | Builder Property Under Construction | home loan |
      | Auto Allocation       | Checkbox   | property        | Builder Property Under Construction | home loan |
      | Show History          | Button     | property        | Builder Property Under Construction | home loan |
      | Initiate Verification | Button     | property        | Builder Property Under Construction | home loan |
      | Verification Type     | Dropdown   | property        | Ready Property                      | home loan |
      | Agency                | Dropdown   | property        | Ready Property                      | home loan |
      | Add                   | Icon       | property        | Ready Property                      | home loan |
      | delete                | Icon       | property        | Ready Property                      | home loan |
      | Auto Allocation       | Checkbox   | property        | Ready Property                      | home loan |
      | Show History          | Button     | property        | Ready Property                      | home loan |
      | Initiate Verification | Button     | property        | Ready Property                      | home loan |
      | Verification Type     | Dropdown   | property        | Construction On Land                | home loan |
      | Agency                | Dropdown   | property        | Construction On Land                | home loan |
      | Add                   | Icon       | property        | Construction On Land                | home loan |
      | Delete                | Icon       | property        | Construction On Land                | home loan |
      | Auto Allocation       | Checkbox   | property        | Construction On Land                | home loan |
      | Show History          | Button     | property        | Construction On Land                | home loan |
      | Initiate Verification | Button     | property        | Construction On Land                | home loan |
      | Initiate Verification | Button     | property        | Construction On Land                | home loan |
      | Verification Type     | Dropdown   | property        | Plot + Self Construction            | home loan |
      | Agency                | Dropdown   | property        | Plot + Self Construction            | home loan |
      | Add                   | Icon       | property        | Plot + Self Construction            | home loan |
      | Delete                | Icon       | property        | Plot + Self Construction            | home loan |
      | Auto Allocation       | Checkbox   | property        | Plot + Self Construction            | home loan |
      | Show History          | Button     | property        | Plot + Self Construction            | home loan |
      | Initiate Verification | Button     | property        | Plot + Self Construction            | home loan |
      | Verification Type     | Dropdown   | property        | Purchase a plot                     | home loan |
      | Agency                | Dropdown   | property        | Purchase a plot                     | home loan |
      | Add                   | Icon       | property        | Purchase a plot                     | home loan |
      | Delete                | Icon       | property        | Purchase a plot                     | home loan |
      | Auto Allocation       | Checkbox   | property        | Purchase a plot                     | home loan |
      | Show History          | Button     | property        | Purchase a plot                     | home loan |
      | Initiate Verification | Button     | property        | Purchase a plot                     | home loan |
      | Verification Type     | Dropdown   | asset           | consumer vehicle                    | home loan |
      | Agency                | Dropdown   | asset           | consumer vehicle                    | home loan |
      | Add                   | Icon       | asset           | consumer vehicle                    | home loan |
      | Delete                | Icon       | asset           | consumer vehicle                    | home loan |
      | Auto Allocation       | Checkbox   | asset           | consumer vehicle                    | home loan |
      | Show History          | Button     | asset           | consumer vehicle                    | home loan |
      | Initiate Verification | Button     | asset           | consumer vehicle                    | home loan |
      | Verification Type     | Dropdown   | asset           | commercial vehicle                  | home loan |
      | Agency                | Dropdown   | asset           | commercial vehicle                  | home loan |
      | Add                   | Icon       | asset           | commercial vehicle                  | home loan |
      | delete                | Icon       | asset           | commercial vehicle                  | home loan |
      | Auto Allocation       | Checkbox   | asset           | commercial vehicle                  | home loan |
      | Show History          | Button     | asset           | commercial vehicle                  | home loan |
      | Initiate Verification | Button     | asset           | commercial vehicle                  | home loan |
      | Verification Type     | Dropdown   | asset           | consumer durable                    | home loan |
      | Agency                | Dropdown   | asset           | consumer durable                    | home loan |
      | Add                   | Icon       | asset           | consumer durable                    | home loan |
      | Delete                | Icon       | asset           | consumer durable                    | home loan |
      | Auto Allocation       | Checkbox   | asset           | consumer durable                    | home loan |
      | Show History          | Button     | asset           | consumer durable                    | home loan |
      | Initiate Verification | Button     | asset           | consumer durable                    | home loan |
      | Initiate Verification | Button     | asset           | consumer durable                    | home loan |
      | Verification Type     | Dropdown   | asset           | tractor                             | home loan |
      | Agency                | Dropdown   | asset           | tractor                             | home loan |
      | Add                   | Icon       | asset           | tractor                             | home loan |
      | Delete                | Icon       | asset           | tractor                             | home loan |
      | Auto Allocation       | Checkbox   | asset           | tractor                             | home loan |
      | Show History          | Button     | asset           | tractor                             | home loan |
      | Initiate Verification | Button     | asset           | tractor                             | home loan |
      | Verification Type     | Dropdown   | asset           | commercial equipment                | home loan |
      | Agency                | Dropdown   | asset           | commercial equipment                | home loan |
      | Add                   | Icon       | asset           | commercial equipment                | home loan |
      | Delete                | Icon       | asset           | commercial equipment                | home loan |
      | Auto Allocation       | Checkbox   | asset           | commercial equipment                | home loan |
      | Show History          | Button     | asset           | commercial equipment                | home loan |
      | Initiate Verification | Button     | asset           | commercial equipment                | home loan |
      | Verification Type     | Dropdown   | gold            | ornament                            | home loan |
      | Agency                | Dropdown   | gold            | ornament                            | home loan |
      | Add                   | Icon       | gold            | ornament                            | home loan |
      | Delete                | Icon       | gold            | ornament                            | home loan |
      | Auto Allocation       | Checkbox   | gold            | ornament                            | home loan |
      | Show History          | Button     | gold            | ornament                            | home loan |
      | Initiate Verification | Button     | gold            | ornament                            | home loan |
      | Verification Type     | Dropdown   | deposit         | fixed deposit                       | home loan |
      | Agency                | Dropdown   | deposit         | fixed deposit                       | home loan |
      | Add                   | Icon       | deposit         | fixed deposit                       | home loan |
      | Delete                | Icon       | deposit         | fixed deposit                       | home loan |
      | Auto Allocation       | Checkbox   | deposit         | fixed deposit                       | home loan |
      | Show History          | Button     | deposit         | fixed deposit                       | home loan |
      | Initiate Verification | Button     | deposit         | fixed deposit                       | home loan |
      | Verification Type     | Dropdown   | deposit         | kisan vikas patra                   | home loan |
      | Agency                | Dropdown   | deposit         | kisan vikas patra                   | home loan |
      | Add                   | Icon       | deposit         | kisan vikas patra                   | home loan |
      | Delete                | Icon       | deposit         | kisan vikas patra                   | home loan |
      | Auto Allocation       | Checkbox   | deposit         | kisan vikas patra                   | home loan |
      | Show History          | Button     | deposit         | kisan vikas patra                   | home loan |
      | Initiate Verification | Button     | deposit         | kisan vikas patra                   | home loan |
      | Verification Type     | Dropdown   | deposit         | national saving certificate         | home loan |
      | Agency                | Dropdown   | deposit         | national saving certificate         | home loan |
      | Add                   | Icon       | deposit         | national saving certificate         | home loan |
      | Delete                | Icon       | deposit         | national saving certificate         | home loan |
      | Auto Allocation       | Checkbox   | deposit         | national saving certificate         | home loan |
      | Show History          | Button     | deposit         | national saving certificate         | home loan |
      | Initiate Verification | Button     | deposit         | national saving certificate         | home loan |
      | Verification Type     | Dropdown   | insurance       | insurance                           | home loan |
      | Agency                | Dropdown   | insurance       | insurance                           | home loan |
      | Add                   | Icon       | insurance       | insurance                           | home loan |
      | Delete                | Icon       | insurance       | insurance                           | home loan |
      | Auto Allocation       | Checkbox   | insurance       | insurance                           | home loan |
      | Show History          | Button     | insurance       | insurance                           | home loan |
      | Initiate Verification | Button     | insurance       | insurance                           | home loan |
      | Verification Type     | Dropdown   | land            | land                                | home loan |
      | Agency                | Dropdown   | land            | land                                | home loan |
      | Add                   | Icon       | land            | land                                | home loan |
      | Delete                | Icon       | land            | land                                | home loan |
      | Auto Allocation       | Checkbox   | land            | land                                | home loan |
      | Show History          | Button     | land            | land                                | home loan |
      | Initiate Verification | Button     | land            | land                                | home loan |
      | Verification Type     | Dropdown   | property        | Builder Property Under Construction | auto loan |
      | Agency                | Dropdown   | property        | Builder Property Under Construction | auto loan |
      | Add                   | Icon       | property        | Builder Property Under Construction | auto loan |
      | Delete                | Icon       | property        | Builder Property Under Construction | auto loan |
      | Auto Allocation       | Checkbox   | property        | Builder Property Under Construction | auto loan |
      | Show History          | Button     | property        | Builder Property Under Construction | auto loan |
      | Initiate Verification | Button     | property        | Builder Property Under Construction | auto loan |
      | Verification Type     | Dropdown   | property        | Ready Property                      | auto loan |
      | Agency                | Dropdown   | property        | Ready Property                      | auto loan |
      | Add                   | Icon       | property        | Ready Property                      | auto loan |
      | delete                | Icon       | property        | Ready Property                      | auto loan |
      | Auto Allocation       | Checkbox   | property        | Ready Property                      | auto loan |
      | Show History          | Button     | property        | Ready Property                      | auto loan |
      | Initiate Verification | Button     | property        | Ready Property                      | auto loan |
      | Verification Type     | Dropdown   | property        | Construction On Land                | auto loan |
      | Agency                | Dropdown   | property        | Construction On Land                | auto loan |
      | Add                   | Icon       | property        | Construction On Land                | auto loan |
      | Delete                | Icon       | property        | Construction On Land                | auto loan |
      | Auto Allocation       | Checkbox   | property        | Construction On Land                | auto loan |
      | Show History          | Button     | property        | Construction On Land                | auto loan |
      | Initiate Verification | Button     | property        | Construction On Land                | auto loan |
      | Initiate Verification | Button     | property        | Construction On Land                | auto loan |
      | Verification Type     | Dropdown   | property        | Plot + Self Construction            | auto loan |
      | Agency                | Dropdown   | property        | Plot + Self Construction            | auto loan |
      | Add                   | Icon       | property        | Plot + Self Construction            | auto loan |
      | Delete                | Icon       | property        | Plot + Self Construction            | auto loan |
      | Auto Allocation       | Checkbox   | property        | Plot + Self Construction            | auto loan |
      | Show History          | Button     | property        | Plot + Self Construction            | auto loan |
      | Initiate Verification | Button     | property        | Plot + Self Construction            | auto loan |
      | Verification Type     | Dropdown   | property        | Purchase a plot                     | auto loan |
      | Agency                | Dropdown   | property        | Purchase a plot                     | auto loan |
      | Add                   | Icon       | property        | Purchase a plot                     | auto loan |
      | Delete                | Icon       | property        | Purchase a plot                     | auto loan |
      | Auto Allocation       | Checkbox   | property        | Purchase a plot                     | auto loan |
      | Show History          | Button     | property        | Purchase a plot                     | auto loan |
      | Initiate Verification | Button     | property        | Purchase a plot                     | auto loan |
      | Verification Type     | Dropdown   | asset           | consumer vehicle                    | auto loan |
      | Agency                | Dropdown   | asset           | consumer vehicle                    | auto loan |
      | Add                   | Icon       | asset           | consumer vehicle                    | auto loan |
      | Delete                | Icon       | asset           | consumer vehicle                    | auto loan |
      | Auto Allocation       | Checkbox   | asset           | consumer vehicle                    | auto loan |
      | Show History          | Button     | asset           | consumer vehicle                    | auto loan |
      | Initiate Verification | Button     | asset           | consumer vehicle                    | auto loan |
      | Verification Type     | Dropdown   | asset           | commercial vehicle                  | auto loan |
      | Agency                | Dropdown   | asset           | commercial vehicle                  | auto loan |
      | Add                   | Icon       | asset           | commercial vehicle                  | auto loan |
      | delete                | Icon       | asset           | commercial vehicle                  | auto loan |
      | Auto Allocation       | Checkbox   | asset           | commercial vehicle                  | auto loan |
      | Show History          | Button     | asset           | commercial vehicle                  | auto loan |
      | Initiate Verification | Button     | asset           | commercial vehicle                  | auto loan |
      | Verification Type     | Dropdown   | asset           | consumer durable                    | auto loan |
      | Agency                | Dropdown   | asset           | consumer durable                    | auto loan |
      | Add                   | Icon       | asset           | consumer durable                    | auto loan |
      | Delete                | Icon       | asset           | consumer durable                    | auto loan |
      | Auto Allocation       | Checkbox   | asset           | consumer durable                    | auto loan |
      | Show History          | Button     | asset           | consumer durable                    | auto loan |
      | Initiate Verification | Button     | asset           | consumer durable                    | auto loan |
      | Initiate Verification | Button     | asset           | consumer durable                    | auto loan |
      | Verification Type     | Dropdown   | asset           | tractor                             | auto loan |
      | Agency                | Dropdown   | asset           | tractor                             | auto loan |
      | Add                   | Icon       | asset           | tractor                             | auto loan |
      | Delete                | Icon       | asset           | tractor                             | auto loan |
      | Auto Allocation       | Checkbox   | asset           | tractor                             | auto loan |
      | Show History          | Button     | asset           | tractor                             | auto loan |
      | Initiate Verification | Button     | asset           | tractor                             | auto loan |
      | Verification Type     | Dropdown   | asset           | commercial equipment                | auto loan |
      | Agency                | Dropdown   | asset           | commercial equipment                | auto loan |
      | Add                   | Icon       | asset           | commercial equipment                | auto loan |
      | Delete                | Icon       | asset           | commercial equipment                | auto loan |
      | Auto Allocation       | Checkbox   | asset           | commercial equipment                | auto loan |
      | Show History          | Button     | asset           | commercial equipment                | auto loan |
      | Initiate Verification | Button     | asset           | commercial equipment                | auto loan |
      | Verification Type     | Dropdown   | property        | Builder Property Under Construction | auto loan |
      | Agency                | Dropdown   | property        | Builder Property Under Construction | auto loan |
      | Add                   | Icon       | property        | Builder Property Under Construction | auto loan |
      | Delete                | Icon       | property        | Builder Property Under Construction | auto loan |
      | Auto Allocation       | Checkbox   | property        | Builder Property Under Construction | auto loan |
      | Show History          | Button     | property        | Builder Property Under Construction | auto loan |
      | Initiate Verification | Button     | property        | Builder Property Under Construction | auto loan |
      | Verification Type     | Dropdown   | property        | Ready Property                      | auto loan |
      | Agency                | Dropdown   | property        | Ready Property                      | auto loan |
      | Add                   | Icon       | property        | Ready Property                      | auto loan |
      | delete                | Icon       | property        | Ready Property                      | auto loan |
      | Auto Allocation       | Checkbox   | property        | Ready Property                      | auto loan |
      | Show History          | Button     | property        | Ready Property                      | auto loan |
      | Initiate Verification | Button     | property        | Ready Property                      | auto loan |
      | Verification Type     | Dropdown   | property        | Construction On Land                | auto loan |
      | Agency                | Dropdown   | property        | Construction On Land                | auto loan |
      | Add                   | Icon       | property        | Construction On Land                | auto loan |
      | Delete                | Icon       | property        | Construction On Land                | auto loan |
      | Auto Allocation       | Checkbox   | property        | Construction On Land                | auto loan |
      | Show History          | Button     | property        | Construction On Land                | auto loan |
      | Initiate Verification | Button     | property        | Construction On Land                | auto loan |
      | Initiate Verification | Button     | property        | Construction On Land                | auto loan |
      | Verification Type     | Dropdown   | property        | Plot + Self Construction            | auto loan |
      | Agency                | Dropdown   | property        | Plot + Self Construction            | auto loan |
      | Add                   | Icon       | property        | Plot + Self Construction            | auto loan |
      | Delete                | Icon       | property        | Plot + Self Construction            | auto loan |
      | Auto Allocation       | Checkbox   | property        | Plot + Self Construction            | auto loan |
      | Show History          | Button     | property        | Plot + Self Construction            | auto loan |
      | Initiate Verification | Button     | property        | Plot + Self Construction            | auto loan |
      | Verification Type     | Dropdown   | property        | Purchase a plot                     | auto loan |
      | Agency                | Dropdown   | property        | Purchase a plot                     | auto loan |
      | Add                   | Icon       | property        | Purchase a plot                     | auto loan |
      | Delete                | Icon       | property        | Purchase a plot                     | auto loan |
      | Auto Allocation       | Checkbox   | property        | Purchase a plot                     | auto loan |
      | Show History          | Button     | property        | Purchase a plot                     | auto loan |
      | Initiate Verification | Button     | property        | Purchase a plot                     | auto loan |
      | Verification Type     | Dropdown   | asset           | consumer vehicle                    | auto loan |
      | Agency                | Dropdown   | asset           | consumer vehicle                    | auto loan |
      | Add                   | Icon       | asset           | consumer vehicle                    | auto loan |
      | Delete                | Icon       | asset           | consumer vehicle                    | auto loan |
      | Auto Allocation       | Checkbox   | asset           | consumer vehicle                    | auto loan |
      | Show History          | Button     | asset           | consumer vehicle                    | auto loan |
      | Initiate Verification | Button     | asset           | consumer vehicle                    | auto loan |
      | Verification Type     | Dropdown   | asset           | commercial vehicle                  | auto loan |
      | Agency                | Dropdown   | asset           | commercial vehicle                  | auto loan |
      | Add                   | Icon       | asset           | commercial vehicle                  | auto loan |
      | delete                | Icon       | asset           | commercial vehicle                  | auto loan |
      | Auto Allocation       | Checkbox   | asset           | commercial vehicle                  | auto loan |
      | Show History          | Button     | asset           | commercial vehicle                  | auto loan |
      | Initiate Verification | Button     | asset           | commercial vehicle                  | auto loan |
      | Verification Type     | Dropdown   | asset           | consumer durable                    | auto loan |
      | Agency                | Dropdown   | asset           | consumer durable                    | auto loan |
      | Add                   | Icon       | asset           | consumer durable                    | auto loan |
      | Delete                | Icon       | asset           | consumer durable                    | auto loan |
      | Auto Allocation       | Checkbox   | asset           | consumer durable                    | auto loan |
      | Show History          | Button     | asset           | consumer durable                    | auto loan |
      | Initiate Verification | Button     | asset           | consumer durable                    | auto loan |
      | Initiate Verification | Button     | asset           | consumer durable                    | auto loan |
      | Verification Type     | Dropdown   | asset           | tractor                             | auto loan |
      | Agency                | Dropdown   | asset           | tractor                             | auto loan |
      | Add                   | Icon       | asset           | tractor                             | auto loan |
      | Delete                | Icon       | asset           | tractor                             | auto loan |
      | Auto Allocation       | Checkbox   | asset           | tractor                             | auto loan |
      | Show History          | Button     | asset           | tractor                             | auto loan |
      | Initiate Verification | Button     | asset           | tractor                             | auto loan |
      | Verification Type     | Dropdown   | asset           | commercial equipment                | auto loan |
      | Agency                | Dropdown   | asset           | commercial equipment                | auto loan |
      | Add                   | Icon       | asset           | commercial equipment                | auto loan |
      | Delete                | Icon       | asset           | commercial equipment                | auto loan |
      | Auto Allocation       | Checkbox   | asset           | commercial equipment                | auto loan |
      | Show History          | Button     | asset           | commercial equipment                | auto loan |
      | Initiate Verification | Button     | asset           | commercial equipment                | auto loan |

          #FeatureID-ACAUTOCAS-368
  Scenario Outline:Mandatory fields validation of verification section in CII for secondary collateral <collateral_type> and <collateral_sub_type> with dataset <row num> of <Loan_Type> application
    And application has "<collateral_type>" secondary collateral with collateral subtype as "<collateral_sub_type>"
    When user selects the "<Loan_Type>" application of CII stage
    And user selects initiate Valuation Verification
    And user adds a verification entry
    And user reads data from excelFile "CIIWorkBook.xlsx" under sheet "cii_verification" and <row_num>
    And user fills the data "<mandatory_non_mandatory>"
    And user initiate the verification
    Then error message is displayed
    Examples:
      | collateral_type | collateral_sub_type                 | row_num | mandatory_non_mandatory | Loan_Type |
      | property        | Ready Property                      | 0       | without mandatory field | home loan |
      | property        | Ready Property                      | 1       | without mandatory field | home loan |
      | property        | Ready Property                      | 2       | without mandatory field | home loan |
      | property        | Builder Property Under Construction | 0       | without mandatory field | home loan |
      | property        | Builder Property Under Construction | 1       | without mandatory field | home loan |
      | property        | Builder Property Under Construction | 2       | without mandatory field | home loan |
      | property        | Construction On Land                | 0       | without mandatory field | home loan |
      | property        | Construction On Land                | 1       | without mandatory field | home loan |
      | property        | Construction On Land                | 2       | without mandatory field | home loan |
      | property        | Plot + Self Construction            | 0       | without mandatory field | home loan |
      | property        | Plot + Self Construction            | 1       | without mandatory field | home loan |
      | property        | Plot + Self Construction            | 2       | without mandatory field | home loan |
      | property        | purchase a plot                     | 0       | without mandatory field | home loan |
      | property        | purchase a plot                     | 1       | without mandatory field | home loan |
      | property        | purchase a plot                     | 2       | without mandatory field | home loan |
      | asset           | consumer vehicle                    | 0       | without mandatory field | home loan |
      | asset           | consumer vehicle                    | 1       | without mandatory field | home loan |
      | asset           | consumer vehicle                    | 2       | without mandatory field | home loan |
      | asset           | commercial vehicle                  | 0       | without mandatory field | home loan |
      | asset           | commercial vehicle                  | 1       | without mandatory field | home loan |
      | asset           | commercial vehicle                  | 2       | without mandatory field | home loan |
      | asset           | consumer durable                    | 0       | without mandatory field | home loan |
      | asset           | consumer durable                    | 1       | without mandatory field | home loan |
      | asset           | consumer durable                    | 2       | without mandatory field | home loan |
      | asset           | tractor                             | 0       | without mandatory field | home loan |
      | asset           | tractor                             | 1       | without mandatory field | home loan |
      | asset           | tractor                             | 2       | without mandatory field | home loan |
      | asset           | commercial equipment                | 0       | without mandatory field | home loan |
      | asset           | commercial equipment                | 1       | without mandatory field | home loan |
      | asset           | commercial equipment                | 2       | without mandatory field | home loan |
      | property        | Ready Property                      | 0       | without mandatory field | home loan |
      | property        | Ready Property                      | 1       | without mandatory field | home loan |
      | property        | Ready Property                      | 2       | without mandatory field | home loan |
      | property        | Builder Property Under Construction | 0       | without mandatory field | home loan |
      | property        | Builder Property Under Construction | 1       | without mandatory field | home loan |
      | property        | Builder Property Under Construction | 2       | without mandatory field | home loan |
      | property        | Construction On Land                | 0       | without mandatory field | home loan |
      | property        | Construction On Land                | 1       | without mandatory field | home loan |
      | property        | Construction On Land                | 2       | without mandatory field | home loan |
      | property        | Plot + Self Construction            | 0       | without mandatory field | home loan |
      | property        | Plot + Self Construction            | 1       | without mandatory field | home loan |
      | property        | Plot + Self Construction            | 2       | without mandatory field | home loan |
      | property        | purchase a plot                     | 0       | without mandatory field | home loan |
      | property        | purchase a plot                     | 1       | without mandatory field | home loan |
      | property        | purchase a plot                     | 2       | without mandatory field | home loan |
      | asset           | consumer vehicle                    | 0       | without mandatory field | home loan |
      | asset           | consumer vehicle                    | 1       | without mandatory field | home loan |
      | asset           | consumer vehicle                    | 2       | without mandatory field | home loan |
      | asset           | commercial vehicle                  | 0       | without mandatory field | home loan |
      | asset           | commercial vehicle                  | 1       | without mandatory field | home loan |
      | asset           | commercial vehicle                  | 2       | without mandatory field | home loan |
      | asset           | consumer durable                    | 0       | without mandatory field | home loan |
      | asset           | consumer durable                    | 1       | without mandatory field | home loan |
      | asset           | consumer durable                    | 2       | without mandatory field | home loan |
      | asset           | tractor                             | 0       | without mandatory field | home loan |
      | asset           | tractor                             | 1       | without mandatory field | home loan |
      | asset           | tractor                             | 2       | without mandatory field | home loan |
      | asset           | commercial equipment                | 0       | without mandatory field | home loan |
      | asset           | commercial equipment                | 1       | without mandatory field | home loan |
      | asset           | commercial equipment                | 2       | without mandatory field | home loan |
      | property        | Ready Property                      | 0       | without mandatory field | home loan |
      | property        | Ready Property                      | 1       | without mandatory field | home loan |
      | property        | Ready Property                      | 2       | without mandatory field | home loan |
      | property        | Builder Property Under Construction | 0       | without mandatory field | home loan |
      | property        | Builder Property Under Construction | 1       | without mandatory field | home loan |
      | property        | Builder Property Under Construction | 2       | without mandatory field | home loan |
      | property        | Construction On Land                | 0       | without mandatory field | home loan |
      | property        | Construction On Land                | 1       | without mandatory field | home loan |
      | property        | Construction On Land                | 2       | without mandatory field | home loan |
      | property        | Plot + Self Construction            | 0       | without mandatory field | home loan |
      | property        | Plot + Self Construction            | 1       | without mandatory field | home loan |
      | property        | Plot + Self Construction            | 2       | without mandatory field | home loan |
      | property        | purchase a plot                     | 0       | without mandatory field | home loan |
      | property        | purchase a plot                     | 1       | without mandatory field | home loan |
      | property        | purchase a plot                     | 2       | without mandatory field | home loan |
      | asset           | consumer vehicle                    | 0       | without mandatory field | home loan |
      | asset           | consumer vehicle                    | 1       | without mandatory field | home loan |
      | asset           | consumer vehicle                    | 2       | without mandatory field | home loan |
      | asset           | commercial vehicle                  | 0       | without mandatory field | home loan |
      | asset           | commercial vehicle                  | 1       | without mandatory field | home loan |
      | asset           | commercial vehicle                  | 2       | without mandatory field | home loan |
      | asset           | consumer durable                    | 0       | without mandatory field | home loan |
      | asset           | consumer durable                    | 1       | without mandatory field | home loan |
      | asset           | consumer durable                    | 2       | without mandatory field | home loan |
      | asset           | tractor                             | 0       | without mandatory field | home loan |
      | asset           | tractor                             | 1       | without mandatory field | home loan |
      | asset           | tractor                             | 2       | without mandatory field | home loan |
      | asset           | commercial equipment                | 0       | without mandatory field | home loan |
      | asset           | commercial equipment                | 1       | without mandatory field | home loan |
      | asset           | commercial equipment                | 2       | without mandatory field | home loan |
