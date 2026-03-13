@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-harshprit.kumar
@ImplementedBy-harshprit.kumar
@Release2
@ReviewedByDEV
@ReviewedSecCollateral
@LoggedBug
Feature: Collateral investigation initiation screen validation for search application part 12

  #After discussion with Author, Last Updated Date field is now being validated in a separate scenario
  Scenario Outline: ACAUTOCAS-4430: user searches the application for CII with search parameters present in <Cii_ciiGrid_rowNum> part 12
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens collateral investigation initiation screen
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_api>" and row <Cii_api_rowNum>
    And user stores some values collateral investigation initiation grid using api
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_ciiGrid>" and row <Cii_ciiGrid_rowNum>
    And user enters all parameter values of Collateral Investigation grid
    Then user should be able to search applications on given parameter combination
    Examples:
      | CiiWB                                    | Cii_ciiGrid | Cii_ciiGrid_rowNum |Cii_api | Cii_api_rowNum |
      | collateral_investigation_initiation.xlsx | cii_grid    | 672                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 673                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 674                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 675                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 676                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 677                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 678                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 679                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 680                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 681                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 682                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 683                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 684                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 685                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 686                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 687                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 688                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 689                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 690                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 691                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 692                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 693                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 694                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 695                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 696                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 697                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 698                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 699                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 700                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 701                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 702                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 703                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 704                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 705                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 706                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 707                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 708                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 709                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 710                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 711                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 712                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 713                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 714                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 715                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 716                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 717                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 718                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 719                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 720                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 721                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 722                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 723                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 724                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 725                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 726                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 727                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 728                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 729                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 730                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 731                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 732                |api     | 0              |
