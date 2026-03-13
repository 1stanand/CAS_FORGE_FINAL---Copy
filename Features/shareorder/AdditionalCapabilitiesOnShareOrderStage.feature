@Epic-PF_Share_Base
@PQMStory
@AuthoredBy-piyush.agnihotri
@ReviewedBy-harshprit.kumar
@TechReviewedBy-harshprit.kumar
@Islamic
@Shares
@ReleaseIslamic
#Story-CAS-191635
Feature: Additional Capabilities On Share Order Stage

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-5_CAS-191635
  #FeatureID-ACAUTOCAS-11313
  @ImplementedBy-piyush.agnihotri
    @Perishable
    @ReleaseIslamicM3
@Release
  Scenario Outline: ACAUTOCAS-14785: Validate success message while rejecting decision on Share Order Stage with config.tadawul.service.isManual is set as False
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user selects decision as "Reject" in Decision Details Section
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    And user select reason in Decision Details Section
    And user clicks on save button on share order stage
    Then success message should be visible on share order stage
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 7                            | <ApplicantType> | shares   | isshare order |

  @Perishable
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-6_CAS-191635
  #PMG-5_CAS-191635
  #FeatureID-ACAUTOCAS-11313
    @ImplementedBy-piyush.agnihotri
    @ReleaseIslamicM3
@Release
  Scenario Outline: ACAUTOCAS-14786: Validate sent back while rejecting decision on Share Order Stage with config.tadawul.service.isManual is set as False
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user selects decision as "Reject" in Decision Details Section
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    And user select reason in Decision Details Section
    And user clicks on save button on share order stage
    And user clicks on move to next stage
    And user verify application at "Purchase Promise"
    Then Application should get sent back to "Purchase Promise" stage
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 7                            | <ApplicantType> | shares   | isshare order |

  @Perishable
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-7_CAS-191635
  #PMG-7_CAS-191635
  #FeatureID-ACAUTOCAS-11313
    @ImplementedBy-piyush.agnihotri
    @ReleaseIslamicM3
@Release
  Scenario Outline: ACAUTOCAS-14787: Validate next stage while approving decision on Share Order Stage with config.tadawul.service.isManual is set as False
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user selects decision as "Approve" in Decision Details Section
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    And user select reason in Decision Details Section
    And user clicks on save button on share order stage
    And user clicks on move to next stage
    And user verify application at "Share_Purchase"
    Then Application should get sent back to "Share_Purchase" stage
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 4                            | <ApplicantType> | shares   | isshare order |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-7_CAS-191635
  #PMG-6_CAS-191635
  #FeatureID-ACAUTOCAS-11313
  @ImplementedBy-piyush.agnihotri
Scenario Outline: ACAUTOCAS-18119:Validate Message logging in Activity Section while rejecting decision on Share Order Stage with config.tadawul.service.isManual is set as False
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When user selects decision as "Reject" in Decision Details Section
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    And user select reason in Decision Details Section
    And user clicks on save button on share order stage
    And user clicks on move to next stage
    And user open that same application at "Purchase Promise" stage
#    Then Success message for Send Back Activity should be displayed
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 7                            | <ApplicantType> | shares   | isshare order |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-07_CAS-191635
  #PMG-8_CAS-191635
  #FeatureID-ACAUTOCAS-11313
  @ImplementedBy-piyush.agnihotri
Scenario Outline: ACAUTOCAS-18120:Validate Message logging in Activity Section while approving decision on Share Order Stage with config.tadawul.service.isManual is set as False
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When user selects decision as "Approve" in Decision Details Section
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    And user select reason in Decision Details Section
    And user clicks on save button on share order stage
    And user clicks on move to next stage
    And user open that same application at "Share Purchase" stage
#    Then Success message should be displayed
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 4                            | <ApplicantType> | shares   | isshare order |

  @Perishable
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-07_CAS-191635
  #PMG-9_CAS-191635
  #FeatureID-ACAUTOCAS-11313
    @ImplementedBy-piyush.agnihotri
    @ReleaseIslamicM3
@Release
  Scenario Outline: ACAUTOCAS-14788: Validate Move Application to Next Stage without saving decision
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    When user clicks on move to next stage without filling decision
    Then proper error message will be displayed on Share Order Tab
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 11                           | <ApplicantType> | shares   | isshare order |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-11_CAS-191635
  #FeatureID-ACAUTOCAS-11313
  @ImplementedBy-manish.yadav2
    @Perishable
    @ReleaseIslamicM3
@Release
  Scenario Outline: ACAUTOCAS-14789:  Validate move to next stage while approving decision at <ApplicationStage> of <ProductType> with config.tadawul.service.isManual is set as True
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user selects decision as "Approve" in Decision Details Section
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    And user select reason in Decision Details Section
    When user clicks on save button on share order stage
#    When user clicks on move to next stage
    Then Application should remain on the "Share Order" Stage
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 4                            | <ApplicantType> | shares   | isshare order |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-12_CAS-191635
  #PMG-10_CAS-191635
  #FeatureID-ACAUTOCAS-11313
  @ImplementedBy-manish.yadav2
    @Perishable
    @ReleaseIslamicM3
@Release
  Scenario Outline: ACAUTOCAS-14790:  Validate service failure message logging in Activity Section while approving decision at <ApplicationStage> of <ProductType> with config.tadawul.service.isManual is set as True
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user selects decision as "Approve" in Decision Details Section
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    And user select reason in Decision Details Section
    When user clicks on save button on share order stage
#    When user clicks on move to next stage
    Then service failure message should be logged in the activity
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 10                           | <ApplicantType> | shares   | isshare order |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-13_CAS-191635
  #FeatureID-ACAUTOCAS-11313
  @ImplementedBy-manish.yadav2
    @Perishable
    @ReleaseIslamicM3
@Release
  Scenario Outline: ACAUTOCAS-14791:  Validate error in service message logging in Activity Section while approving decision at <ApplicationStage> of <ProductType> with config.tadawul.service.isManual is set as True
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user selects decision as "Approve" in Decision Details Section
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    And user select reason in Decision Details Section
    When user clicks on save button on share order stage
#    When user clicks on move to next stage
    Then service failure message should be logged in the activity
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 10                           | <ApplicantType> | shares   | isshare order |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-14_CAS-191635, 19_CAS-191635, 20_CAS-191635
  #FeatureID-ACAUTOCAS-11313
  @ImplementedBy-manish.yadav2
    @ReleaseIslamicM3
@Release
  Scenario Outline: ACAUTOCAS-14792:  Validate <Action> option at <ApplicationStage> of <ProductType> with config.tadawul.service.isManual is set as True
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user try to cancel the application on share order stage
    Then no option should be available to "<Action>" from share order stage
    Examples:
      | ProductType   | ApplicationStage   | Action             | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | Cancel Application | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Reject Application | <ApplicantType> | shares   | isshare order |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-23_CAS-191635
  #FeatureID-ACAUTOCAS-11313
  @ImplementedBy-manish.yadav2
    @ReleaseIslamicM3
@Release
  Scenario Outline: ACAUTOCAS-14793:  Validate activity of enquiry screen with activity at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user stores latest activity in context
    When user opens an "<ProductType>" application at "<ApplicationStage>" stage from enquiry screen
    Then activity on enquiry screen should be same as activity on share order stage
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-23_CAS-191635
  #FeatureID-ACAUTOCAS-11313
  @ImplementedBy-manish.yadav2
    @ReleaseIslamicM3
@Release
  Scenario Outline: ACAUTOCAS-14794:  Validate read only mode of activity in enquiry screen
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from enquiry screen
    When user opens activity on enquiry screen
    Then activity on enquiry screen should be in read only mode
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #UT-5_CAS-191635
  #FeatureID-ACAUTOCAS-11313
  @ImplementedBy-manish.yadav2
Scenario Outline: ACAUTOCAS-18121: Validate alert popup after filling only rejecting decision radio at <ApplicationStage> of <ProductType> with config.tadawul.service.isManual is set as True
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    When user selects decision as "Reject" in Decision Details Section
    And user clicks on save button on share order stage
#    Then alert popup along with confirm and cancel buttons should not display
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 7                            | <ApplicantType> | shares   | isshare order |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-1_CAS-191635
  #FeatureID-ACAUTOCAS-11313
  @ImplementedBy-manish.yadav2
Scenario Outline: ACAUTOCAS-18122: Validate alert popup after rejecting decision at <ApplicationStage> of <ProductType> with config.tadawul.service.isManual is set as True
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    When user selects decision as "Reject" in Decision Details Section
    And user select reason in Decision Details Section
    And user clicks on save button on share order stage
#    Then alert popup along with confirm and cancel buttons should display
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 7                            | <ApplicantType> | shares   | isshare order |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-2_CAS-191635
  #PMG-1_CAS-191635, 3_CAS-191635
  #FeatureID-ACAUTOCAS-11313
  @ImplementedBy-manish.yadav2
Scenario Outline: ACAUTOCAS-18123: Validate stage after rejecting decision at <ApplicationStage> of <ProductType> with config.tadawul.service.isManual is set as True
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    When user selects decision as "Reject" in Decision Details Section
    And user select reason in Decision Details Section
    And user clicks on save button on share order stage
#    When user clicks on confirm button of the alert confirmation message on share order stage
    Then Application should get sent back to "Purchase Promise" stage
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 7                            | <ApplicantType> | shares   | isshare order |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-2_CAS-191635
  #PMG-4_CAS-191635
  #FeatureID-ACAUTOCAS-11313
  @ImplementedBy-manish.yadav2
    @Perishable
    @ReleaseIslamicM3
@Release
  Scenario Outline: ACAUTOCAS-14795:  Validate screen after rejecting decision at <ApplicationStage> of <ProductType> with config.tadawul.service.isManual is set as True
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    And user selects decision as "Reject" in Decision Details Section
    And user select reason in Decision Details Section
    When user clicks on save button on share order stage
#    When user clicks on cancel button of the alert confirmation message on share order stage
    Then screen should remain on the same screen which is share order stage
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 7                            | <ApplicantType> | shares   | isshare order |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-07_CAS-186310
  #PMG-2_CAS-191635
  #FeatureID-ACAUTOCAS-11313
  @ImplementedBy-manish.yadav2
Scenario Outline: ACAUTOCAS-18124: Validate next stage after approving decision at <ApplicationStage> of <ProductType> with config.tadawul.service.isManual is set as True
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user selects decision as "Approve" in Decision Details Section
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    And user select reason in Decision Details Section
    And user clicks on save button on share order stage
    When user clicks on move to next stage
    Then application should move to "Share Purchase" stage
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 4                            | <ApplicantType> | shares   | isshare order |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-45_CAS-186309
  #ST-12_CAS-191635
  #FeatureID-ACAUTOCAS-11313
  @ImplementedBy-manish.yadav2
    @Perishable
    @ReleaseIslamicM3
@Release
  Scenario Outline: ACAUTOCAS-14796:  Validate send back of cancelled application for <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "cancel_application.xlsx" under sheet "cancel_application" and row 33
    And user cancel the application present in context of "Share Order" stage
    And user opens an application from cancelled application grid
    When user send back that application from review cancelled application screen
    Then Application should get sent back to "Share Order" stage
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-15_CAS-191635
  #PMG-11_CAS-191635
  #FeatureID-ACAUTOCAS-11313
  @ImplementedBy-manish.yadav2
    @Perishable
    @ReleaseIslamicM3
@Release
  Scenario Outline: ACAUTOCAS-14797:  Validate send back stage option of cancelled application for <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "cancel_application.xlsx" under sheet "cancel_application" and row 33
    And user cancel the application present in context of "Share Order" stage
    When user opens an application from cancelled application grid
    And user select action in cancelled application
    Then Share Order option should be present in activity dropdown of review cancelled application screen
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-16_CAS-191635
  #FeatureID-ACAUTOCAS-11313
  @ImplementedBy-manish.yadav2
    @Perishable
    @ReleaseIslamicM3
@Release
  Scenario Outline: ACAUTOCAS-14798:  Validate message logging in Activity Section after send back of cancelled application for <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "cancel_application.xlsx" under sheet "cancel_application" and row 33
    And user cancel the application present in context of "Share Order" stage
    And user opens an application from cancelled application grid
    When user send back that application from review cancelled application screen
    And user opens an application of "Share Order" stage present in context from application grid
    Then in activity section reason should reflect same as entered during send back from review cancelled application screen
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |
