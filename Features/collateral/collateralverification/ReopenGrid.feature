@Epic-Collateral_Investigation
@AuthoredBy-vipin.kishor
@ReviewedBy-
@ImplementedBy-vipin.kishor
@TechReviewedBy-
@NotImplemented
@new
Feature:Collateral investigation verification grid

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    #FeatureID-ACAUTOCAS-365
  Scenario:Reopen collateral investigation verification grid column
    When user open collateral investigation verification page
    And user clicks on Reopen
    Then following grid column should be present
      | GridColumn               |
      | Application Number       |
      | Verification Type        |
      | Collateral ID            |
      | Collateral Number        |
      | Collateral Type          |
      | Agency                   |
      | Agent                    |
      | Initiated On             |
      | Preferred Valuation Date |
      | Preferred Valuation      |
      | Last Update On           |
      | Action                   |


       #FeatureID-ACAUTOCAS-365
  Scenario Outline:Search on the basis of <GridColumn> in reopen CIV grid
    And user open collateral investigation verification page
    And user clicks on Reopen
    When user search application on the basis of <GridColumn> in reopen CIV grid
    Then application should be display in grid
    Examples:
      | GridColumn               |
      | Application Number       |
      | Verification Type        |
      | Collateral ID            |
      | Collateral Number        |
      | Collateral Type          |
      | Agency                   |
      | Agent                    |
      | Initiated On             |
      | Preferred Valuation Date |
      | Last Update On           |


        #FeatureID-ACAUTOCAS-365
  Scenario Outline: Sort the grid in ascending order on the basis of <GridColumn> in reopen CIV grid
    And user open collateral investigation verification page
    And user clicks on Reopen
    When Sort the grid in ascending order the basis of <GridColumn> in reopen CIV grid
    Then collateral investigation initiation grid should be sort in ascending order
    Examples:
      | GridColumn               |
      | Application Number       |
      | Verification Type        |
      | Collateral ID            |
      | Collateral Number        |
      | Collateral Type          |
      | Agency                   |
      | Agent                    |
      | Initiated On             |
      | Preferred Valuation Date |
      | Preferred Valuation      |
      | Last Update On           |



        #FeatureID-ACAUTOCAS-365
  Scenario Outline: Sort the grid in descending order on the basis of <GridColumn> in reopen CIV grid
    And user open collateral investigation verification page
    And user clicks on Reopen
    When Sort the grid in descending order the basis of <GridColumn> in reopen CIV grid
    Then collateral investigation initiation grid should be sort in descending order
    Examples:
      | GridColumn               |
      | Application Number       |
      | Verification Type        |
      | Collateral ID            |
      | Collateral Number        |
      | Collateral Type          |
      | Agency                   |
      | Agent                    |
      | Initiated On             |
      | Preferred Valuation Date |
      | Preferred Valuation      |
      | Last Update On           |


   #FeatureID-ACAUTOCAS-365
  Scenario Outline:Filter the application on the basis of  <GridColumn> in reopen CIV grid
    And user open collateral investigation verification page
    And user clicks on Reopen
    When Filter the application on the basis of <GridColumn> in reopen CIV grid
    Then application should be filtered
    Examples:
      | GridColumn               |
      | Application Number       |
      | Verification Type        |
      | Collateral ID            |
      | Collateral Number        |
      | Collateral Type          |
      | Agency                   |
      | Agent                    |
      | Initiated On             |
      | Preferred Valuation Date |
      | Last Update On           |


      #FeatureID-ACAUTOCAS-365
  Scenario Outline:Clear filter form the grid after applying on <GridColumn> in reopen CIV grid
    And user open collateral investigation verification page
    And user clicks on Reopen
    When clear filter form <GridColumn> in reopen CIV grid
    Then filter should be removed form <GridColumn>
    Examples:
      | GridColumn               |
      | Application Number       |
      | Verification Type        |
      | Collateral ID            |
      | Collateral Number        |
      | Collateral Type          |
      | Agency                   |
      | Agent                    |
      | Initiated On             |
      | Preferred Valuation Date |
      | Last Update On           |




  #FeatureID-ACAUTOCAS-365
  Scenario:Save search name in reopen CIV grid
    And user open collateral investigation verification page
    And user clicks on Reopen
    When user save search name in reopen CIV grid
    Then save search name should be saved successfully

  #FeatureID-ACAUTOCAS-365
  Scenario:Load search in reopen CIV grid
    And user open collateral investigation verification page
    And user clicks on Reopen
    When user Load search in reopen CIV grid
    Then Load search should be searched successfully

 #FeatureID-ACAUTOCAS-365
  Scenario Outline:Export the reopen CIV grid as <Excel_CSV>
    And user open collateral investigation verification page
    And user clicks on Reopen
    When user export the reopen CIV grid as "<Excel_CSV>"
    Then reopen CIV grid should be exported as "<Excel_CSV>"
    Examples:
      | Excel_CSV |
      | Excel     |
      | CSV       |


#FeatureID-ACAUTOCAS-365
  Scenario Outline:Validated the number of rows in Exported <Excel_CSV> file
    And user open collateral investigation verification page
    And user clicks on Reopen
    When user export the reopen CIV grid as "<Excel_CSV>"
    Then number of rows in Exported <Excel_CSV> file should be matched with reopen CIV grid
    Examples:
      | Excel_CSV |
      | Excel     |
      | CSV       |

#FeatureID-ACAUTOCAS-365
  Scenario:Copy the reopen CIV grid details
    And user open collateral investigation verification page
    And user clicks on Reopen
    When user Copy the reopen CIV grid
    Then reopen CIV grid details should be copied successfully

#FeatureID-ACAUTOCAS-365
  Scenario Outline:Show the "<NumberOfRows>" rows of reopen CIV grid
    And user open collateral investigation verification page
    And user clicks on Reopen
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
  Scenario Outline:Copy the reopen CIV grid details after showing the "<NumberOfRows>" rows
    And user open collateral investigation verification page
    And user clicks on Reopen
    When user selects "<NumberOfRows>" number of rows to show CIV in grid
    And user Copy the reopen CIV grid
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
  Scenario Outline:Validating all Pagination in reopen CIV grid
    And user open collateral investigation verification page
    And user clicks on Reopen
    When "<Page>" page of reopen CIV grid is open
    Then "<Paginate_Btn>" should work successfully
    Examples:
      | Page  | Paginate_Btn             |
      | first | paginate_button next     |
      | first | paginate_button last     |
      | last  | paginate_button previous |
      | last  | paginate_button first    |

     #FeatureID-ACAUTOCAS-365
  Scenario Outline:All pagination button validation in reopen CIV grid
    And user open collateral investigation verification page
    And user clicks on Reopen
    When "<Page>" page of reopen CIV grid is open
    Then "<Paginate_Btn>" should be "<Enable_Disable>"
    Examples:
      | Page  | Paginate_Btn             | Enable_Disable |
      | first | paginate_button next     | enable         |
      | first | paginate_button last     | enable         |
      | first | paginate_button previous | disable        |
      | first | paginate_button first    | disable        |
      | last  | paginate_button last     | enable         |
      | last  | paginate_button previous | enable         |
      | last  | paginate_button next     | disable        |
      | last  | paginate_button last     | disable        |

      #FeatureID-ACAUTOCAS-365
  Scenario:Search on the basis of more than one grid column in reopen CIV grid
    And user open collateral investigation verification page
    And user clicks on Reopen
    When user search application on the basis of more than one grid column
    Then search would be done on the combination of those grid column

          #FeatureID-ACAUTOCAS-365
  Scenario:Last Update On column validation in reopen CIV grid
    And user open collateral investigation verification page
    And user clicks on Reopen
    And user open an application to collateral investigation verification
    And user make some changes in application
    When user checks application in reopen CIV grid
    Then Last Update On date should be display correctly as per last update

  #FeatureID-ACAUTOCAS-365
  Scenario Outline:Calender pop up validation On "<Column>" column in reopen CIV grid
    And user open collateral investigation verification page
    And user clicks on Reopen
    When user clicks on calender icon of "<Column>" column in reopen CIV grid
    Then calender should be display
    Examples:
      | Column                   |
      | Initiated On             |
      | Preferred Valuation Date |
      | Last Updated On          |

   #FeatureID-ACAUTOCAS-365
  Scenario Outline:Cancel apply date range On "<Column>" column validation in reopen CIV grid
    And user open collateral investigation verification page
    And user clicks on Reopen
    When user clicks on calender icon of "<Column>" column in reopen CIV grid
    And user clicks on cancel
    Then calender pop up should be closed
    Examples:
      | Column                   |
      | Initiated On             |
      | Preferred Valuation Date |
      | Last Updated On          |

   #FeatureID-ACAUTOCAS-365
  Scenario Outline:Apply date range in "<Column>" column validation in reopen CIV grid
    And user open collateral investigation verification page
    And user clicks on Reopen
    When user clicks on calender icon of "<Column>" column in reopen CIV grid
    And user select date range
    And user apply the selected date range
    Then selected date range should be applied in "<Column>"
    Examples:
      | Column                   |
      | Initiated On             |
      | Preferred Valuation Date |
      | Last Updated On          |