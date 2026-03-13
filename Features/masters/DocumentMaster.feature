@Epic-Document
@AuthoredBy-Anshu.bhaduri
@ReviewedBy-harshprit.kumar
@TechReviewedBy-
@ImplementedBy-manish.yadav2
@Islamic
@Conventional
@Release
@RunConfig-3

Feature: Document Master

  Background:
    Given maker logged in "Common Masters" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #Defects
  #  CAS-51985
  # FeatureID-ACAUTOCAS-1,ACAUTOCAS-8470,CAS-51985,PDDEV-14089
  Scenario: ACAUTOCAS-8575:User should be able to edit document in Document Master
    And user reads data from the excel file "document_masters.xlsx" under sheet "document" and row 1
    When user navigates to documents master
    And user opens document in edit mode
    And user updates document in documents master
    And user clicks on save button in documents master
    Then user should be able to edit document in documents master

  #Defects
  #  CAS-51985
  # FeatureID-ACAUTOCAS-1,ACAUTOCAS-8470,CAS-51985,PDDEV-14089
  Scenario: ACAUTOCAS-8576:  User should not be able to enter document name with more than 255 characters
    And user reads data from the excel file "document_masters.xlsx" under sheet "document" and row 2
    When user navigates to documents master
    And user clicks on create document in documents master
    And user tries to enter more than 255 characters in document name field
    Then user should not be able to enter document name with more than 255 characters


  #Defects
  #  CAS-103993,CAS-103356,CAS-107365,CAS-129116,CAS-108513,ACAUTOCAS-8470
    #FeatureID-ACAUTOCAS-1,ACAUTOCAS-8470,CAS-103993,CAS-103356,CAS-107365,CAS-129116,CAS-108513
  Scenario:ACAUTOCAS-8577: User should be able to add additional fields in document master
    And user reads data from the excel file "document_masters.xlsx" under sheet "document" and row 0
    And user navigates to documents master
    And user clicks on create document in documents master
    And user fills mandatory details to create document
    And user navigates to relevant fields section on document master
    When user enters the details in relevant fields section as :
      | document_masters.xlsx | document | 3 | Type | Alphanumeric             |
      | document_masters.xlsx | document | 4 | Type | Numeric                  |
      | document_masters.xlsx | document | 5 | Type | Character                |
      | document_masters.xlsx | document | 6 | Type | Date                     |
      | document_masters.xlsx | document | 7 | Type | Regular Expression Based |
    And user clicks on save button in documents master
    Then user should be able to save the additional fields with type in documents master

  #Defects
  #  CAS-67327,CAS-68881, PDDEV-19002
  #FeatureID-ACAUTOCAS-1,ACAUTOCAS-8470,CAS-67327,CAS-68881, PDDEV-19002
  Scenario: ACAUTOCAS-8578: User should not be able to see additional fields in document master post deleting the fields
    And user reads data from the excel file "document_masters.xlsx" under sheet "document" and row 10
    And user navigates to documents master
    And user opens document in edit mode
    When user deletes relevant fields captured for this document
    And maker click on save and request approval
    And maker logout from common masters
    And checker logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigates to documents master
    And user searches document in documents master
    And checker approved the record
    And user waits for document grid to load successfully
    And user opens document in edit mode
    Then after approval the relevant fields captured for this document should be deleted


  #Defects
  #  CAS-126522
  # FeatureID-ACAUTOCAS-1,ACAUTOCAS-8470,CAS-126522,CAS-130982, CAS-129114, CAS-129695, CAS-131124
  Scenario: ACAUTOCAS-8579:  Documents marked as Inactive in document master should be shown as "Inactive" in documents master grid in "Active Inactive" column
    And user reads data from the excel file "document_masters.xlsx" under sheet "document" and row 8
    And user navigates to documents master
    And user opens document in edit mode
    When user marks document as "Inactive" in documents master
    And maker click on save and request approval
    And maker logout from common masters
    And checker logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigates to documents master
    And user searches document in documents master
    And checker approved the record
    And user waits for document grid to load successfully
    And user searches document in documents master
    Then document should be shown as "Inactive" in documents master grid


    ### shifted to Proposal Feature file on 19-Sep-24
##05_CAS_64795,
## FeatureID-CAS-64975,ACAUTOCAS-1,ACAUTOCAS-8470
# #prerequisite-image mandatory flag is checked in document master
#  @Deferred
#  Scenario Outline: ACAUTOCAS-8580: Receiving image should be mandatory for document received status at "<Var_Stage>" Stage
#    And image mandatory flag is checked in document master
#    And user is already on Proposal Creation Screen
#    When user navigates to Document Tab at "<Var_Stage>" Stage
#    And user does not upload any image for document status as received
#    And user saves document status
#    Then image upload should be mandatory in proposal creation for document status marked as received
#    Examples:
#    |checkbox               |
#    |ocr extraction allowed |
#    |face similarity enabled|
#
#
#  @DevTrack
#  Scenario Outline: Validate <checkbox> to be unchecked on document master
#    When user is adding any document by clicking on New Document Button
#    And navigates to create documents screen
#    Then "<checkbox>" should be unchecked at first
#    Examples:
#    |checkbox              |
#    |ocr extraction allowed|
#    |face similarity enabled|

  #Defects
  #Bug:CAS-62352,CAS-63708
  #FeatureID-ACAUTOCAS-1,ACAUTOCAS-8470,CAS-62352,CAS-63708
  Scenario: ACAUTOCAS-8602:  In document master group document cannot be part of the child document to any group document
    And user reads data from the excel file "document_masters.xlsx" under sheet "document" and row 9
    And user navigates to documents master
    And user clicks on create document in documents master
    And user fills mandatory details to create document
    When user selects the document type as "Group Document"
    Then user should not get any group document in the child document section

  #Defects
  #CAS-194637
  # FeatureID-ACAUTOCAS-1,ACAUTOCAS-254,CAS-194637
  #Collateral Document Mapping master already maintained with documents mapped to it
  Scenario: ACAUTOCAS-8588:  User should be able to edit details in Collateral Document Mapping Master
    And maker navigates to collateral document mapping
    And user reads data from the excel file "document_masters.xlsx" under sheet "collateral_document_mapping" and row 2
    And user updates details in Collateral Document Mapping Master
    When user saves the record of Collateral Document Mapping Master
    Then user should be able to edit details in Collateral Document Mapping Master successfully without any error

  #Defects
  #CAS-194637
  # FeatureID-ACAUTOCAS-1,ACAUTOCAS-254,CAS-194637
  #Collateral Document Mapping master already maintained with documents mapped to it
  Scenario: ACAUTOCAS-8589:  Audit Trail should get updated as per data updated by user in Collateral Document Mapping Master
    And maker navigates to collateral document mapping
    And user reads data from the excel file "document_masters.xlsx" under sheet "collateral_document_mapping" and row 1
    And user updates details in Collateral Document Mapping Master
    And maker click on save and request approval
    And maker logout from common masters
    And checker logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And checker navigates to collateral document mapping
    And user searches in collateral document mapping
    And checker approved the record
    And user open updated Collateral Document Mapping
    When user navigates to Activity section audit trail tab
    Then Audit Trail should get updated as per data updated by user in Collateral Document Mapping Master

        #changes related to document master screen for Feature ID-PDDEVIN-7747
  @DevTrack @AuthoredBy-Komal #FeatureID-PDDEVIN-7747
    @NotImplemented
  Scenario Outline: Validate <checkbox> to be present on document master
    When user navigates to documents master
    And views a document through view documents screen
    Then  "<checkbox>" should be visible
    Examples:
      |checkbox|
      |ocr extraction allowed |
      |face similarity enabled|

  @NotImplemented
    @DevTrack @AuthoredBy-Komal #FeatureID-PDDEVIN-7747
  Scenario Outline: Validate <checkbox> to be present on document master
    When user is adding any document by clicking on New Document Button
    And navigates to create documents screen
    Then "<checkbox>" should be visible
    Examples:
      |checkbox               |
      |ocr extraction allowed |
      |face similarity enabled|

  @NotImplemented
    @DevTrack @AuthoredBy-Komal #FeatureID-PDDEVIN-7747
  Scenario Outline: Validate <checkbox> to be unchecked on document master
    When user is adding any document by clicking on New Document Button
    And navigates to create documents screen
    Then "<checkbox>" should be unchecked at first
    Examples:
      |checkbox              |
      |ocr extraction allowed|
      |face similarity enabled|



    #Feature Id-PDDEVIN-8177
  #Positive
  @DevTrack
    @AuthoredBy-Komal
    @ReviewedBy-tarun.gupta
    @NotImplemented
  Scenario Outline: Validate document type dropdown to be visible in documents master screen while "<action>"
    And user navigates to documents master screen
    When ocr extraction allowed checkbox is checked
    Then ocr document type dropdown should be visible while "<action>"
    Examples:
      |action|
      |create|
      |update|
      |view  |


    #Feature Id-PDDEVIN-8177
  #Negative
  @DevTrack
    @AuthoredBy-Komal
    @ReviewedBy-tarun.gupta
    @NotImplemented
  Scenario Outline: Validate document type dropdown should not be visible in documents master screen while "<action>"
    And user navigates to documents master screen
    And update a document
    When ocr extraction allowed checkbox is unchecked
    Then ocr document type dropdown should not be visible while "<action>"
    Examples:
      |action|
      |create|
      |update|
      |view  |



    #Feature Id-PDDEVIN-8177
  #Positive
  @DevTrack
    @AuthoredBy-Komal
    @ReviewedBy-tarun.gupta
    @NotImplemented
  Scenario Outline: Validate ocr document type field to be mandatory while "<action>"
    And user navigates to documents master screen
    When ocr extraction allowed checkbox checked
    Then ocr document type field should be mandatory  while "<action>"
    Examples:
      |action|
      |create|
      |update|
      |view  |

   #Feature Id-PDDEVIN-8177
  #Negative
  @DevTrack
    @AuthoredBy-Komal
    @ReviewedBy-tarun.gupta
    @NotImplemented
  Scenario Outline: Validate validation should come  while "<action>"
    And user navigates to documents master screen
    When ocr extraction allowed checkbox checked
    Then "<dropdown_value>" should be visible in dropdown for selection while "<action>"
    Examples:
      |action|dropdown_value|
      |create|pan           |
      |create|aadhar        |
      |create|voter id      |
      |create|passport      |
      |create|license       |
      |create|gst           |
      |update|pan           |
      |update|aadhar        |
      |update|voter id      |
      |update|passport      |
      |update|license       |
      |update|gst           |
      |view  |pan           |
      |view  |aadhar        |
      |view  |voter id      |
      |view  |passport      |
      |view  |license       |
      |view  |gst           |



   #Feature Id-PDDEVIN-8177
  #Negative
  @DevTrack
    @AuthoredBy-Komal
    @ReviewedBy-tarun.gupta
    @NotImplemented
  Scenario Outline: Validate validation should come while "<action>"
    And user navigates to documents master screen
    When ocr extraction allowed checkbox checked
    And user saves the document without selecting any value from dropdown
    Then validation must come  while "<action>"
    Examples:
      |action|
      |create|
      |update|
      |view  |

    ##