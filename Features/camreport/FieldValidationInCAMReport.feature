@Epic-Recommendation
@ReviewedBy-None
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ImplementedBy-aryan.jain
@Release3
@ReviewedByDEV

Feature:Field Validation In CAM Report

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

 #FeatureID- ACAUTOCAS-6073
  Scenario Outline: ACAUTOCAS-6238: <var> <type> is visible in CAM report screen
    When user navigates to CAM report screen
    Then "<var>" is visible
    Examples:
      | var                           | type     |
      | Enter Loan Application Number | textbox  |
      | Select Stage                  | dropdown |
      | Submit                        | button   |

     #FeatureID- ACAUTOCAS-6073
  Scenario: ACAUTOCAS-6261: Default stage is set to latest in CAM report screen
    When user navigates to CAM report screen
    Then stage is selected as latest by default

     #FeatureID- ACAUTOCAS-6073
  Scenario Outline: ACAUTOCAS-6262: Search CAM report without application id in CAM report screen
    And user reads data from the excel file "<CAMWB>" under sheet "<CAM_camReport>" and row <CAM_camReport_rowNum>
    When user navigates to CAM report screen
    And user search the CAM report without entering application id
    Then error message is displayed
    Examples:
      | CAMWB    | CAM_camReport | CAM_camReport_rowNum |
      | cam.xlsx | cam_report    | 0                    |

     #FeatureID- ACAUTOCAS-6073
  Scenario Outline: ACAUTOCAS-6263: Validating selection of credit approval stage in CAM report screen
    And user reads data from the excel file "<CAMWB>" under sheet "<CAM_camReport>" and row <CAM_camReport_rowNum>
    When user navigates to CAM report screen
    And user selects the stage
    Then stage is selected successfully
    Examples:
      | CAMWB    | CAM_camReport | CAM_camReport_rowNum |
      | cam.xlsx | cam_report    | 0                    |

     #FeatureID- ACAUTOCAS-6073
  Scenario Outline: ACAUTOCAS-6264: Validating selection of latest stage in CAM report screen
    And user reads data from the excel file "<CAMWB>" under sheet "<CAM_camReport>" and row <CAM_camReport_rowNum>
    When user navigates to CAM report screen
    And user selects a different stage
    And user reads data from the excel file "<CAMWB>" under sheet "<CAM_camReport>" and row <CAM_camReport_rowNum1>
    And user selects the stage
    Then latest stage is selected successfully
    Examples:
      | CAMWB    | CAM_camReport | CAM_camReport_rowNum | CAM_camReport_rowNum1 |
      | cam.xlsx | cam_report    | 0                    | 1                     |

     #FeatureID- ACAUTOCAS-6073
  Scenario Outline: ACAUTOCAS-6265: Validating help icon in CAM report screen
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<CAMWB>" under sheet "<CAM_camReport>" and row <CAM_camReport_rowNum>
    When user navigates to CAM report screen
    And user opens help icon
    Then online help window is displayed successfully
    Examples:
      | CAMWB    | CAM_camReport | CAM_camReport_rowNum |
      | cam.xlsx | cam_report    | 0                    |




