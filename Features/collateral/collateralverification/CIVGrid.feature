@Epic-Collateral_Investigation
@AuthoredBy-vipin.kishor
@ReviewedBy-
@TechReviewedBy-
@Perishable
@Release3
Feature:Collateral investigation verification grid

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    #FeatureID-ACAUTOCAS-365
  @ImplementedBy-ashutosh.kumar2
  Scenario:Collateral investigation verification grid column
    When user open collateral investigation verification page
    Then following grid column should be present
      | Application Number       |
      | Verification Type        |
      | Collateral ID            |
      | Collateral Number        |
      | Collateral Type          |
      | Agency                   |
      | Initiated On             |
      | Preferred Valuation Date |
      | Preferred Valuation      |
      | Last Update On           |
      | Action                   |


       #FeatureID-ACAUTOCAS-365
  Scenario Outline:Search on the basis of <GridColumn> in CIV grid
    And user open collateral investigation verification page
    And user picks and set application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" in context from perishable pool
    When user search application on the basis of "<GridColumn>" in CIV grid
    Then application should be display in grid
    Examples:
      | GridColumn               |
      | Application Number       |
      | Verification Type        |
      | Collateral ID            |
      | Collateral Number        |
      | Collateral Type          |
      | Agency                   |
      | Initiated On             |
      | Preferred Valuation Date |
      | Last Update On           |


        #FeatureID-ACAUTOCAS-365
  @ImplementedBy-ashutosh.kumar2
  Scenario Outline: Sort the grid in ascending order on the basis of <GridColumn> in CIV grid
    And user open collateral investigation verification page
    When Sort the grid in "ascending" order the basis of "<GridColumn>" in CIV grid
    Then collateral investigation initiation grid should be sort in "ascending" order on the basis of "<GridColumn>"
    Examples:
      | GridColumn               |
      | Application Number       |
      | Verfication Type         |
      | Collateral ID            |
      | Collateral Number        |
      | Collateral Type          |
      | Agency                   |
      | Initiated On             |
      | Preferred Valuation Date |
      | Preferred Valuation Time |
      | Last Updated On          |



        #FeatureID-ACAUTOCAS-365
  @ImplementedBy-ashutosh.kumar2
  Scenario Outline: Sort the grid in descending order on the basis of <GridColumn> in CIV grid
    And user open collateral investigation verification page
    When Sort the grid in "descending" order the basis of "<GridColumn>" in CIV grid
    Then collateral investigation initiation grid should be sort in "descending" order on the basis of "<GridColumn>"
    Examples:
      | GridColumn               |
      | Application Number       |
      | Verfication Type         |
      | Collateral ID            |
      | Collateral Number        |
      | Collateral Type          |
      | Agency                   |
      | Initiated On             |
      | Preferred Valuation Date |
      | Preferred Valuation Time |
      | Last Updated On          |



      #FeatureID-ACAUTOCAS-365
  Scenario Outline:Clear filter form the grid after applying on <GridColumn> in CIV grid
    And user open collateral investigation verification page
    When clear filter form <GridColumn> in CIV grid
    Then filter should be removed form <GridColumn>
    Examples:
      | GridColumn               |
      | Application Number       |
      | Verification Type        |
      | Collateral ID            |
      | Collateral Number        |
      | Collateral Type          |
      | Agency                   |
      | Initiated On             |
      | Preferred Valuation Date |
      | Last Update On           |




  #FeatureID-ACAUTOCAS-365
  @ImplementedBy-ashutosh.kumar2
  Scenario Outline:Save search name in CIV grid
    And user open collateral investigation verification page
    And user picks and set application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" in context from perishable pool
    And user search application in CIV Grid
    And user reads data from the excel file "collateral_investigation_initiation.xlsx" under sheet "cii_grid" and row 294
    When user enter the Search Criteria Name to save search in Civ Grid
    And user saves the search criteria
    Then save search name should be saved successfully

    Examples:
      | ProductType | ApplicantType | ApplicationStage                    | Category | key |
      | PL          | indiv         | collateral investigation initiation |          | civ |

  #FeatureID-ACAUTOCAS-365
  @ImplementedBy-ashutosh.kumar2
  Scenario Outline:Load search in CIV grid
    And user open collateral investigation verification page
    And user picks and set application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" in context from perishable pool
    And user search application in CIV Grid
    And user reads data from the excel file "collateral_investigation_initiation.xlsx" under sheet "cii_grid" and row 294
    When user enter the Search Criteria Name to save search in Civ Grid
    And user saves the search criteria
    When user clicks on load search in Civ Grid
    Then user should be able filter out all applications on given fields parameter combination
    Examples:
      | ProductType | ApplicantType | ApplicationStage                    | Category | key |
      | PL          | indiv         | collateral investigation initiation |          | civ |


 #FeatureID-ACAUTOCAS-365
  @ImplementedBy-ashutosh.kumar2
  Scenario Outline:Export the CIV grid as <Excel_CSV>
    And user open collateral investigation verification page
    When user open exports data as "<Excel_CSV>"
    Then CIV grid should be exported as "<Excel_CSV>"
    Examples:
      | Excel_CSV |
      | Excel     |
      | CSV       |


#FeatureID-ACAUTOCAS-365
  @ImplementedBy-ashutosh.kumar2
  Scenario Outline:Validated the number of rows in Exported <Excel_CSV> file
    And user open collateral investigation verification page
    When user open exports data as "<Excel_CSV>"
    And CIV grid should be exported as "<Excel_CSV>"
    Then number of rows in Exported file should be matched with CIV grid
    Examples:
      | Excel_CSV |
      | Excel     |
      | CSV       |

#FeatureID-ACAUTOCAS-365
  @ImplementedBy-ashutosh.kumar2
  Scenario:Copy the CIV grid details
    And user open collateral investigation verification page
    When user Copy the CIV grid
    Then CIV grid details should be copied successfully

#FeatureID-ACAUTOCAS-365
  @ImplementedBy-ashutosh.kumar2
  Scenario Outline:Show the "<NumberOfRows>" rows of CIV grid
    And user open collateral investigation verification page
    When user selects "<NumberOfRows>" number of rows to show CIV in grid
    Then selected "<NumberOfRows>" rows "<Display>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less |
      | 10           | display                                 | more      |
      | 25           | display                                 | more      |
      | 50           | display                                 | more      |
      | 10           | not display only available rows display | less      |
      | 25           | not display only available rows display | less      |
      | 50           | not display only available rows display | less      |

#FeatureID-ACAUTOCAS-365
  @ImplementedBy-ashutosh.kumar2
  Scenario Outline:Copy the CIV grid details after showing the "<NumberOfRows>" rows
    And user open collateral investigation verification page
    When user selects "<NumberOfRows>" number of rows to show CIV in grid
    And user Copy the CIV grid
    Then selected "<NumberOfRows>" rows "<Copied>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Copied                                | More_Less |
      | 10           | copied                                | more      |
      | 25           | copied                                | more      |
      | 50           | copied                                | more      |
      | 10           | not copied only available rows copied | less      |
      | 25           | not copied only available rows copied | less      |
      | 50           | not copied only available rows copied | less      |

 #FeatureID-ACAUTOCAS-365
  @ImplementedBy-ashutosh.kumar2
  Scenario Outline:Validating all Pagination in CIV grid
    And user open collateral investigation verification page
    When "<Page>" page of CIV grid is open
    Then "<Paginate_Btn>" should work successfully on civ grid
    Examples:
      | Page  | Paginate_Btn |
      | first | next         |
      | first | last         |
      | last  | previous     |
      | last  | first        |

      #FeatureID-ACAUTOCAS-365
  @ImplementedBy-ashutosh.kumar2
  Scenario Outline:All pagination button validation in CIV grid
    And user open collateral investigation verification page
    When "<Page>" page of CIV grid is open
    Then paginate button "<Paginate_Btn>" should be "<Enable_Disable>"
    Examples:
      | Page  | Paginate_Btn | Enable_Disable |
      | first | next         | enable         |
      | first | last         | enable         |
      | first | previous     | disable        |
      | first | first        | disable        |
      | last  | last         | disable        |
      | last  | previous     | enable         |
      | last  | next         | disable        |
      | last  | last         | disable        |

      #FeatureID-ACAUTOCAS-365
  Scenario:Search on the basis of more than one grid column in CIV grid
    And user open collateral investigation verification page
    When user search application on the basis of more than one grid column
    Then search would be done on the combination of those grid column

          #FeatureID-ACAUTOCAS-365
  Scenario:Last Update On column validation in CIV grid
    And user open collateral investigation verification page
    And user open an application to collateral investigation verification
    And user make some changes in application
    When user checks application in CIV grid
    Then Last Update On date should be display correctly as per last update

  #FeatureID-ACAUTOCAS-365

  @ImplementedBy-ashutosh.kumar2
  Scenario Outline:Calender pop up validation On "<Column>" column in CIV grid
    And user open collateral investigation verification page
    When user clicks on calender tab on "<Column>" column
    Then calender tab is displayed
    Examples:
      | Column                   |
      | Initiated On             |
      | Preferred Valuation Date |
      | Last Updated On          |

   #FeatureID-ACAUTOCAS-365
  @ImplementedBy-ashutosh.kumar2
  Scenario Outline:Cancel apply date range On "<Column>" column validation in CIV grid
    And user open collateral investigation verification page
    When user clicks on calender tab on "<Column>" column
    And user clicks on cancel calender tab
    Then calender pop up should be closed
    Examples:
      | Column                   |
      | Initiated On             |
      | Preferred Valuation Date |
      | Last Updated On          |

   #FeatureID-ACAUTOCAS-365
  @ImplementedBy-ashutosh.kumar2
  Scenario Outline:Apply date range in "<Column>" column validation in CIV grid
    And user open collateral investigation verification page
    When user clicks on calender tab on "<Column>" column
    And user apply the selected date range
    Then selected date range should be applied in "<Column>"
    Examples:
      | Column                   |
      | Initiated On             |
      | Preferred Valuation Date |
      | Last Updated On          |