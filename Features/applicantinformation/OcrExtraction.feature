@AuthoredBy-komal
@Epic-CAS-216756
@ImplementedBy-
@TechReviewedBy-
@ReviewedBy-Tarun.gupta
@Epic-OCR
#EpicID-CAS-216756

#${ApplicantType:["indiv", "non indiv"]}
#${ApplicationStage:["Lead details","DDE","Recommendation","Credit Approval","Reconsideration","Post Approval","Disbursal"]}
#${ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP", "Credit Card", "MULF","BD","CashCred","BL","LC","BG"]}
#$Can be used at any stage where documents tab is applied
#Pre-Requisites- OCR Extraction allowed checkbox is checked in documents master

#FeatureID- PDDEVIN-7747
Feature: OCR Extraction related Changes -  ECM Widget(UI changes)

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData"

  @DevTrack
  Scenario Outline: Validate OCR initiation on check sign click for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to documents tab for "<ProductType>"
    When user clicks on plus icon to upload a document
    And clicks on check sign
    Then ocr should be initiated
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  @DevTrack
  Scenario Outline: Validate OCR icon present on documents screen tab for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And users navigates to documents tab for "<ProductType>"
    When ECM widget is open
    Then ocr icon should be present at documents tab for every document to view the extracted information through ocr
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  @DevTrack
  Scenario Outline: Validate that the OCR icon is clickable for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And users navigates to documents tab for "<ProductType>"
    When ecm widget is open at documents tab to upload the documents
    Then ocr icon is clickable
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  @DevTrack
  Scenario Outline: Validate OCR icon opening a modal for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to documents tab for "<ProductType>"
    When ecm widget is open to upload the documents
    And ocr icon is clicked
    Then a modal will open
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  @DevTrack
  Scenario Outline: Validate OCR icon to change colour in case of successful OCR for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to documents tab
    And user clicks on plus sign to upload a document for "<ProductType>"
    When clicks on check sign
    And ocr is initiated properly
    Then ocr icon is turned to green to inform user that ocr is successfully done
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  @DevTrack
  Scenario Outline: Validate OCR icon to change colour in case of unsuccessful OCR for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to documents tab
    And user clicks on plus icon to upload a document for "<ProductType>"
    When clicks on check sign
    And ocr is failed due to some error
    Then ocr icon is turned to red to inform user that ocr is unsuccessful
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  @DevTrack
  Scenario Outline: Validate <ErrorMessage> while initiating OCR for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to documents tab
    And user clicks on plus sign to upload a document for "<ProductType>"
    When clicks on check sign
    And ocr is initiated
    Then "<ErrorMessage>" should come
    Examples:
      |ProductType  |ErrorMessage       |
      |<ProductType>|Some Error Occurred|

  @DevTrack
  Scenario Outline: Validate <ErrorMessage> in case of maximum pages to be added for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to documents tab
    And user clicks on plus sign to upload any document for "<ProductType>"
    When user adds more than documents maintained
    And tries to run ocr
    Then error message should come "<ErrorMessage>"
    Examples:
      | ProductType   | ErrorMessage                                                                                               |
      | <ProductType> | Maximum number of pages allowed is n where n represents the maximum number of pages allowed for a document |

  @DevTrack
  Scenario Outline: Validate Initiate OCR button to be visible on documents tab for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to documents tab for "<ProductType>"
    When ocr extraction allowed checkbox is checked in documents master
    Then initiate ocr button should be visible on screen
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  @DevTrack
  Scenario Outline: Validate Initiate OCR Button in case of failure for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to documents tab
    And user clicks on plus sign to upload a document for "<ProductType>"
    When clicks on check sign
    And ocr is initiated
    Then initiate ocr button should be visible on screen
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  @DevTrack
  Scenario Outline: Validate Re Initiate OCR Button to be visible for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to documents tab
    And user clicks on plus sign to upload any document for "<ProductType>"
    When clicks on check sign
    And ocr is initiated properly
    And user tries to re initiate the ocr
    Then re initiate ocr button should appear on screen
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  @DevTrack
  Scenario Outline: Swapping of image selection dropdown for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to documents tab
    And user clicks on plus sign to upload any document for "<ProductType>"
    When image is uploaded successfully
    Then image selection dropdown should be visible above
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  @DevTrack
  Scenario Outline: Swapping of clickable images menu for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to documents tab
    And user clicks on plus sign to upload any document for "<ProductType>"
    When image is uploaded successfully
    Then clickable images is visible below image selection dropdown
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  @DevTrack
  Scenario Outline: Validate modal structure of OCR with specified <Fields> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to documents tab
    And user clicks on plus sign to upload a document
    When ocr is initiated
    And ocr icon is clicked to view the details
    Then modal is opened which contains the data extracted with specified "<Fields>"
    Examples:
      |Fields            |ProductType  | ApplicantType   | ApplicationStage   | Category | Key |
      |Document Name     |<ProductType>| <ApplicantType> | <ApplicationStage> |          |     |
      |Version           |<ProductType>| <ApplicantType> | <ApplicationStage> |          |     |
      |OCR Executed At   |<ProductType>| <ApplicantType> | <ApplicationStage> |          |     |
      |Extracted Details |<ProductType>| <ApplicantType> | <ApplicationStage> |          |     |

  @DevTrack
  Scenario Outline: Validate history modal structure of OCR with specified <Fields> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to documents tab
    And user clicks on plus sign to upload a document
    When ocr is initiated
    Then history modal is opened which contains the history with specified "<Fields>"
    Examples:
      |Fields          |ProductType  | ApplicantType   | ApplicationStage   | Category | Key |
      |Request status  |<ProductType>| <ApplicantType> | <ApplicationStage> |          |     |
      |Initiated By    |<ProductType>| <ApplicantType> | <ApplicationStage> |          |     |
      |Initiated At    |<ProductType>| <ApplicantType> | <ApplicationStage> |          |     |
      |Document status |<ProductType>| <ApplicantType> | <ApplicationStage> |          |     |


#Feature Id:PDDEVIN-7745 OCR Extraction - Existing Process Changes

  @DevTrack
  Scenario Outline: Validate ocr history to be maintained for audit purpose
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to documents tab
    And user clicks on plus sign to upload a document for "<ProductType>"
    When clicks on check sign
    And ocr is initiated properly
    Then ocr history to be maintained for audit purpose
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |