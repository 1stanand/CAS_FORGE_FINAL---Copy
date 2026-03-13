@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-harshprit.kumar
@ImplementedBy-harshprit.kumar
@Release3
@ReviewedByDEV
@Reconciled
@ReviewedSecCollateral
@LoggedBug
Feature: Collateral investigation initiation screen validation for search application part 7

  #After discussion with Author, Last Updated Date field is now being validated in a separate scenario
  Scenario Outline: ACAUTOCAS-3153:  user searches the application for CII with search parameters present in <Cii_ciiGrid_rowNum> part 7
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
      | collateral_investigation_initiation.xlsx | cii_grid    | 364                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 365                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 366                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 367                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 368                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 369                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 370                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 371                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 372                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 373                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 374                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 375                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 376                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 377                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 378                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 379                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 380                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 381                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 382                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 383                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 384                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 385                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 386                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 387                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 388                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 389                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 390                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 391                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 392                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 393                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 394                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 395                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 396                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 397                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 398                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 399                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 400                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 401                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 402                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 403                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 404                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 405                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 406                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 407                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 408                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 409                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 410                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 411                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 412                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 413                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 414                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 415                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 416                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 417                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 418                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 419                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 420                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 421                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 422                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 423                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 424                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 425                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 426                |api     | 0              |
