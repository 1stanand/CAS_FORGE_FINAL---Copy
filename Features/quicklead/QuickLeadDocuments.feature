@Epic-Quick_Lead
@AuthoredBy-shalini.garg
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@NotImplemented

Feature: Lead Documents in Quick Lead for individual applicant

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate Documents section on Create New Quick Lead page of <ProductType> for Individual applicant
    And user is on Create New Quick Lead screen in CAS
    When user selects Product Type as "<ProductType>"
    And user selects Individual applicant Type
    Then Documents accordion should be visible to user on Create New Quick Lead screen
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate Documents section on Create New Quick Lead page of <ProductType> for Non Individual applicant
    And user is on Create New Quick Lead screen in CAS
    When user selects Product Type as "<ProductType>"
    And user selects Non Individual applicant Type
    Then Documents section should be visible to user on Create New Quick Lead screen
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate Documents section expand for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Individual applicant Type
    When user expands Documents section
    Then Documents section should be expanded
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate documents checklist in Documents section for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Individual applicant Type
    When user expands Documents section
    Then Documents list as per maintained Document checklist should be visible to user
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate Received checkbox for each document in Documents section for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Individual applicant Type
    When user opens Documents accordion
    Then Received checkbox should be present for all the documents present in the list
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate Upload option for each document in Documents section for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Individual applicant Type
    When user opens Documents accordion
    Then Upload option should be present for all the documents present in the list
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate Received checkbox disabled initially for each document in Documents section for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Individual applicant Type
    When user opens Documents accordion
    Then Received checkbox should be disabled for all the documents present in the list
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate help text for each document in Documents section for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Individual applicant Type
    When user opens Documents accordion
    And mouse hover Upload option
    Then No file chosen helptext should be present for all the documents present in the list
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate document Upload for each document in Documents section for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Individual applicant Type
    When user opens Documents accordion
    And user uploads a valid document for any document present in the list
    Then document should be uploaded successfully
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate Remove option for uploaded document for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Individual applicant Type
    And Documents accordion is open
    When a valid document is uploaded for any document present in the list
    Then Remove option should be present for uploaded document
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate Received checkbox for uploaded document for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Individual applicant Type
    And Documents accordion is open
    When a valid document is uploaded for any document present in the list
    Then Received check box should be checked for uploaded document
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate success message for uploaded document for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Individual applicant Type
    And Documents accordion is open
    When a valid document is uploaded for any document present in the list
    Then Doc uploaded successfully messsage should be visible to user
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate uploaded image in image space for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Individual applicant Type
    And Documents accordion is open
    When a valid document is uploaded for any document present in the list
    Then uploaded document should be displayed in image space
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate uploaded document download option for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Individual applicant Type
    And Documents accordion is open
    And a valid document is uploaded for any document present in the list
    When user opens uploaded image
    Then Image download window should be visible to user
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: download uploaded document for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Individual applicant Type
    And Documents accordion is open
    And a valid document is uploaded for any document present in the list
    And a new tab is displayed to download the uploaded image
    When user downloads the uploaded image
    Then uploaded image should be downloaded successfully
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Navigation after download uploaded document for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Individual applicant Type
    And Documents accordion is open
    And a valid document is uploaded for any document present in the list
    And a new tab is displayed to download the uploaded image
    When user downloads the uploaded image
    Then user should be redirected back to Create Quick Lead screen
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: validate image download window for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Individual applicant Type
    And Documents accordion is open
    And a valid document is uploaded for any document present in the list
    And a new tab is displayed to download the uploaded image
    When user downloads the uploaded image
    Then image download window should be closed
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate Remove function for uploaded document for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Individual applicant Type
    And Documents accordion is open
    And a valid document is uploaded for any document present in the list
    When user removes any uploaded document
    Then uploaded document should be removed successfully
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate Received checkbox for removed document for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Individual applicant Type
    And Documents accordion is open
    And a valid document is uploaded for any document present in the list
    When user removes any uploaded document
    Then Received checkbox should get unchecked for that particular document
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate Change option for uploaded document for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Individual applicant Type
    And Documents accordion is open
    And a valid image is uploaded for any document present in the list
    When user updates an uploaded image
    Then user should be able to update the uploaded image
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate error message in Documents section for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Individual applicant Type
    When user opens Documents accordion
    And user uploads a document of unsupported extension/ file type for any document present in the list
    Then document should not be uploaded
    And Proper error message should be displayed
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate large file size error for each document in Documents section for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Individual applicant Type
    When user opens Documents accordion
    And user uploads a document of large file size for any document present in the list
    Then document should not be uploaded
    And Proper error message should be displayed
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate Group Document checklist for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Individual applicant Type
    And user opens Documents accordion
    When user views any Group document in Document checklist
    Then View Acceptable Documents option should be visible to user
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate Group Document upload option for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Individual applicant Type
    And user opens Documents accordion
    When user views the Acceptable Documents for any group document present in the Document checklist
    Then child documents for that group documents should be displayed
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate Reference Type for documents for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Individual applicant Type
    When user opens Documents accordion
    Then Reference Type should be displayed for each as ReferenceType
      | ReferenceType |
      | Loan          |
      | Customer      |
      | Collateral    |
      | Others        |
    Examples:
      | ProductType   |
      | <ProductType> |
      | <ProductType> |
      | <ProductType> |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate Documents section expand for <ProductType> for non-individual customer
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Non Individual applicant Type
    When user expands Documents section
    Then Documents section should be expanded
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate document checklist in Documents section for non-individual customer of <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Non Individual applicant Type
    When user expands Documents section
    Then Documents list as per Document checklist should be visible to user
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate Received checkbox for each document in Documents section for non-individual customer of <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Non Individual applicant Type
    When user opens Documents accordion
    Then Received checkbox should be present for all the documents present in the list
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate Upload option for each document in Documents section for non-individual customer of <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Non Individual applicant Type
    When user opens Documents accordion
    Then Upload option should be present for all the documents present in the list
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate Received checkbox disabled for each document in Documents section for non-individual customer of <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Non Individual applicant Type
    When user opens Documents accordion
    Then Received checkbox should be disabled for all the documents present in the list
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate help text for each document in Documents section for non-individual customer of <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Non Individual applicant Type
    When user opens Documents accordion
    And mouse hover Upload option
    Then No file chosen helptext should be present for all the documents present in the list
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline:Validate document upload for each document in Documents section for non-individual customer of <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Non Individual applicant Type
    When user opens Documents accordion
    And user uploads a valid document for any document present in the list
    Then document should be uploaded successfully
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate Remove option for uploaded document for non-individual customer of <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And applicant type is Non Individual
    And Documents accordion is open
    When a valid document is uploaded for any document present in the list
    Then Remove option should be present for uploaded document
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate Received checkbox checked for uploaded document for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And applicant type is Non Individual
    And Documents accordion is open
    When a valid document is uploaded for any document present in the list
    Then Received check box should be checked for uploaded document
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate success message for uploaded document for non-individual customer for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And applicant type is Non Individual
    And Documents accordion is open
    When a valid document is uploaded for any document present in the list
    Then Doc uploaded successfully messsage should be visible to user
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate uploaded image in image space for non-individual customer for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And applicant type is Non Individual
    And Documents accordion is open
    When a valid document is uploaded for any document present in the list
    Then uploaded document should be displayed in image space
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate uploaded document download option for non-individual customer for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And applicant type is Non Individual
    And Documents accordion is open
    And a valid document is uploaded for any document present in the list
    When user opens uploaded image
    Then Image download window should be visible to user
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: download uploaded document for non-individual customer for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And applicant type is Non Individual
    And Documents accordion is open
    And a valid document is uploaded for any document present in the list
    And a new tab is displayed to download the uploaded image
    When user downloads the uploaded image
    Then uploaded image should be downloaded successfully
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: validate navigation after downloading uploaded document for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And applicant type is Non Individual
    And Documents accordion is open
    And a valid document is uploaded for any document present in the list
    And a new tab is displayed to download the uploaded image
    When user downloads the uploaded image
    Then user should be redirected back to Create Quick Lead screen
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: image download window for uploaded document for non individual customer in <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And applicant type is Non Individual
    And Documents accordion is open
    And a valid document is uploaded for any document present in the list
    And a new tab is displayed to download the uploaded image
    When user downloads the uploaded image
    Then image download window should be closed
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate document is removed for non-individual customer in <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And applicant type is Non Individual
    And Documents accordion is open
    And a valid document is uploaded for any document present in the list
    When user removes any uploaded document
    Then uploaded document should be removed successfully
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate Received checkbox unchecked for removed document for non individual customer in <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And applicant type is Non Individual
    And Documents accordion is open
    And a valid document is uploaded for any document present in the list
    When user removes any uploaded document
    Then Received checkbox should get unchecked for that particular document
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate Change option for uploaded document for non-individual customer in <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And applicant type is Non Individual
    And Documents accordion is open
    And a valid image is uploaded for any document present in the list
    When user updates an uploaded image
    Then user should be able to update the uploaded image
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate error message for unsupported file type in Documents section for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Non Individual applicant Type
    When user opens Documents accordion
    And user uploads a document of unsupported extension/ file type for any document present in the list
    Then document should not be uploaded
    And Proper error message should be displayed
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate error message for large file size in Documents section for non-individual customer of <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Non Individual applicant Type
    When user opens Documents accordion
    And user uploads a document of large file size for any document present in the list
    Then document should not be uploaded
    And Proper error message should be displayed
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate Group Document checklist for non-individual customer for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Non Individual applicant Type
    And user opens Documents accordion
    When user views any Group document in Document checklist
    Then View Acceptable Documents option should be visible to user
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate child documents non-individual customer for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Non Individual applicant Type
    And user opens Documents accordion
    When user views the Acceptable Documents for any group document present in the Document checklist
    Then child documents for that group documents should be displayed
    Examples:
      | ProductType   |
      | <ProductType> |

  #FeatureID-ACAUTOCAS-10439
  #${ProductType:[ "PF","HL","CON_VEH","CEQ","JLG","SHG","KCC","FE","MHL","CV","CC","LAP"]}
  Scenario Outline: Validate Reference Type for documents for non-individual customer for <ProductType>
    And user is on Create New Quick Lead screen in CAS
    And user selects Product Type as "<ProductType>"
    And user selects Non Individual applicant Type
    When user opens Documents accordion
    Then Reference Type should be displayed for each as ReferenceType
      | ReferenceType |
      | Loan          |
      | Customer      |
      | Collateral    |
      | Others        |
    Examples:
      | ProductType   |
      | <ProductType> |
      | <ProductType> |
      | <ProductType> |
      | <ProductType> |
