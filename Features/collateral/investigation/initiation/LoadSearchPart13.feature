@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ImplementedBy-ankit.yadav
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@Release3

Feature: Collateral investigation initiation screen validation for load search part 13


  Scenario Outline: ACAUTOCAS-4393: user loads search criteria <Cii_ciiGrid_rowNum> for CII with various search parameters part 13
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens collateral investigation initiation screen
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_api>" and row <Cii_api_rowNum>
    And user stores some values collateral investigation initiation grid using api
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_ciiGrid>" and row <Cii_ciiGrid_rowNum>
    And user enters parameter values present in collateral investigation initiation
    And user enter the Search Criteria Name to save search
    And user saves the search criteria
    When user clicks on load search
    Then user should be able filter out all applications on given fields parameter combination
    Examples:
      | CiiWB                                    | Cii_ciiGrid | Cii_ciiGrid_rowNum | Cii_api | Cii_api_rowNum |
      | collateral_investigation_initiation.xlsx | cii_grid    | 707                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 708                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 709                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 710                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 711                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 712                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 713                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 714                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 715                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 716                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 717                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 718                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 719                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 720                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 721                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 722                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 723                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 724                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 725                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 726                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 727                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 728                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 729                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 730                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 731                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 732                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 733                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 734                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 735                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 736                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 737                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 738                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 739                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 740                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 741                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 742                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 743                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 744                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 745                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 746                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 747                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 748                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 749                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 750                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 751                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 752                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 753                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 754                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 755                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 756                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 757                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 758                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 759                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 760                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 761                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 762                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 763                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 764                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 765                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 766                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 767                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 768                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 769                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 770                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 771                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 772                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 773                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 774                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 775                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 776                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 777                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 778                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 779                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 780                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 781                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 782                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 783                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 784                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 785                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 786                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 787                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 788                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 789                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 790                | api     | 0              |
