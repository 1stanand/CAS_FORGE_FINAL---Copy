@Epic-Notification
@PQMStory
@ReviewedBy-
@AuthoredBy-piyush.agnihotri
@ImplementedBy-piyush.agnihotri
@Islamic
@Release

Feature: Notification Master

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    # PMG-1_
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15865:Navigate to Notification Master
    When user navigates to Notification Master Grid
    Then user should be able to view Notification Master Grid


    # PMG-2_
  #FeatureID-ACAUTOCAS-15338
  Scenario Outline: ACAUTOCAS-15866:Create a Notification with Notification Type as Email
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row <RowNum>
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    When user creates a new notification with notification type as "<fieldName>"
    And maker click on save and request approval
    And maker logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigates to Notification Master Grid
    And user searches for notification in notification master
    And checker approved the record
    And user searches for notification in notification master
    And user opens the searched notification record
    Then notification type should get selected as "<fieldName>" automatically
    Examples:
      | fieldName | RowNum |
      | Email     | 1      |

    #FeatureID-ACAUTOCAS-15338
Scenario Outline: ACAUTOCAS-18091:Validate Notification Successfully created with Notification Type as Email for <RowNum>
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row <RowNum>
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    When user creates a new notification with notification type as "Email"
    And user selects Attachment Option button in notification master
    And user selects letter type in notification master
    And user check uncheck enable password for the letter type
    And user selects attachment encryption policy for the letter type
    And user selects document type in notification master
    And user check uncheck enable password for the document type
    And user selects attachment encryption policy for the document type
    And user clicks on save button on notification page
    Then notification master record should be saved successfully
    Examples:
      | RowNum |
      | 14     |
      | 15     |
      | 16     |
      | 17     |
      | 18     |
      | 19     |
      | 20     |
      | 21     |
      | 22     |
      | 23     |
      | 24     |
      | 25     |
      | 26     |
      | 27     |
      | 28     |
      | 29     |
      | 30     |
      | 31     |
      | 32     |
      | 33     |
      | 34     |
      | 35     |
      | 36     |
      | 37     |
      | 38     |
      | 39     |
      | 40     |
      | 41     |
      | 42     |
      | 43     |
      | 44     |
      | 45     |
      | 46     |
      | 47     |
      | 48     |
      | 49     |
      | 50     |
      | 51     |
      | 52     |
      | 53     |
      | 54     |
      | 55     |
      | 56     |
      | 57     |
      | 58     |
      | 59     |
      | 60     |
      | 61     |
      | 62     |
      | 63     |
      | 64     |
      | 65     |
      | 66     |
      | 67     |
      | 68     |
      | 69     |
      | 70     |
      | 71     |
      | 72     |
      | 73     |
      | 74     |
      | 75     |
      | 76     |
      | 77     |
      | 78     |
      | 79     |
      | 80     |
      | 81     |
      | 82     |
      | 83     |
      | 84     |
      | 85     |
      | 86     |
      | 87     |
      | 88     |
      | 89     |
      | 90     |
      | 91     |
      | 92     |
      | 93     |
      | 94     |
      | 95     |
      | 96     |
      | 97     |
      | 98     |
      | 99     |
      | 100    |
      | 101    |
      | 102    |
      | 103    |
      | 104    |
      | 105    |
      | 106    |
      | 107    |
      | 108    |
      | 109    |
      | 110    |
      | 111    |

    # PMG-3_
  #FeatureID-ACAUTOCAS-15338
  Scenario Outline: ACAUTOCAS-15867:Validate Attachment Option as a separate section
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row <RowNum>
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    When user creates a new notification with notification type as "<fieldName>"
    Then Attachment Option should come as a separate section
    Examples:
      | fieldName | RowNum |
      | Email     | 1      |

    # PMG-4_
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15868:Validate by default Attachment Option button as Off when Notification Type is Email
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    When user creates a new notification with notification type as "Email"
    Then By default Attachment Option button will be in Off mode


    # PMG-5_
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15869:Validate Switching On Attachment Option button when Notification Type is Email
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    When user creates a new notification with notification type as "Email"
    And user makes Attachment Option button as On
    Then Attachment Option Button will become active


    # PMG-6_
    # PQM-4_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario Outline: ACAUTOCAS-15870:Validate <sections> after Attachment Option is On
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    When user creates a new notification with notification type as "Email"
    And user makes Attachment Option button as On
    Then Both "<sections>" should be present
    Examples:
      | sections            |
      | Generated Documents |
      | Uploaded Documents  |


    # PMG-7_
  #FeatureID-ACAUTOCAS-15338
  Scenario Outline: ACAUTOCAS-15871:Validate Letter Type field behaviour of Manual Attachment under Generated Document
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    And user makes Attachment Option button as On
    When user searches <No_Of_Letter> in letter type field simultaneously
    Then All the letter types should get searched in the letter type field
    Examples:
      | No_Of_Letter |
      | 3            |


    # PMG-8_
    # PQM-7_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario Outline: ACAUTOCAS-15872:Validate selecting three letter types in letter type field
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    And user makes Attachment Option button as On
    When user searches <No_Of_Letter> in letter type field simultaneously
    Then Grid will automatically get created with <No_Of_Letter> letter types
    Examples:
      | No_Of_Letter |
      | 3            |


    # PMG-9_
    # PQM-8_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario Outline: ACAUTOCAS-15873:Validate <Columns> in the manual attachment grid after selecting letter types
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    And user makes Attachment Option button as On
    When user searches <No_Of_Letter> in letter type field simultaneously
    Then grid "<Columns>" should be visible to user
    Examples:
      | Columns                        | No_Of_Letter |
      | Letter Type                    | 3            |
      | Is Enable Password Applicable? | 3            |
      | Attachment Encryption Policy   | 3            |
      | Actions                        | 3            |

    # PMG-10_
    # PQM-9_CAS-206837,11_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario Outline: ACAUTOCAS-15874:Validate Attachment Encryption Policy field getting enabled for Required Letter Type
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    And user makes Attachment Option button as On
    When user searches <No_Of_Letter> in letter type field simultaneously
    And user select Enable Password Flag for one letter type
    Then Attachment Encryption Policy field will get enabled
    Examples:
      | No_Of_Letter |
      | 1            |


    # PMG-11_
  #FeatureID-ACAUTOCAS-15338
  Scenario Outline: ACAUTOCAS-15875:Validate Attachment Encryption Policy field getting disabled for Required Letter Type
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    And user makes Attachment Option button as On
    When user searches <No_Of_Letter> in letter type field simultaneously
    And user select Enable Password Flag for one letter type
    And user Deselect Enable Password Flag for one letter type
    Then Attachment Encryption Policy field will get disabled
    Examples:
      | No_Of_Letter |
      | 1            |


    # PMG-12_
    # PQM-10_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario Outline: ACAUTOCAS-15876:Validate by default Enable Password Flag is disabled for Required Letter Type
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    And user makes Attachment Option button as On
    When user searches <No_Of_Letter> in letter type field simultaneously
    Then By default Enable Password Flag will be disabled for all letter types
    Examples:
      | No_Of_Letter |
      | 1            |



    # PMG-13_
    # PQM-12_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario Outline: ACAUTOCAS-15877:Validate Delete Icon should be present for letter types
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    And user makes Attachment Option button as On
    When user searches <No_Of_Letter> in letter type field simultaneously
    Then Delete Icon should be present for all letter types
    Examples:
      | No_Of_Letter |
      | 1            |


    # PMG-13_
    # PQM-13_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario Outline: ACAUTOCAS-15878:Validate deleting a letter type for letter types
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    And user makes Attachment Option button as On
    When user searches <No_Of_Letter> in letter type field simultaneously
    Then Letter type should get deleted successfully
    Examples:
      | No_Of_Letter |
      | 3            |


    # PMG-15_
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15879:Validate Upload Attachment field behaviour under Generated Document
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    And user upload the attachment
    Then required attachment should get uploaded


    # PMG-16_
    # PQM-17_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15880:Validate Grid will automatically get created with selected file type
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    And user upload the attachment
    Then Grid will automatically get created with selected file type


    # PMG-17_
    # PQM-18_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario Outline: ACAUTOCAS-15881:Validate Grid <Columns> after uploading the attachment
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    And user makes Attachment Option button as On
    When user searches <No_Of_Letter> in letter type field simultaneously
    And user upload the attachment
    Then Grid will contain the required "<Columns>"
    Examples:
      | No_Of_Letter | Columns                        |
      | 1            | File Name                      |
      | 1            | Is Enable Password Applicable? |
      | 1            | Attachment Encryption Policy   |
      | 1            | Actions                        |

    # PQM-19_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15882:Validate file name should be same as attachment file name
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    And user makes Attachment Option button as On
    And user upload the attachment
    Then file name should be same as attachment file name


    # PMG-18_
    # PQM-20_CAS-206837
    # PQM-22_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15883:Validate Attachment Encryption Policy field will get enabled for Required File Type
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    And user upload the attachment
    And user select Enable Password Flag for one File Type
    Then Attachment Encryption Policy field will get enabled for File Type



    # PMG-19_
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15884:Validate Attachment Encryption Policy field will get disabled for Required File Type
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    And user upload the attachment
    And user select Enable Password Flag for one File Type
    And user deselect Enable Password Flag For one File Type
    Then Attachment Encryption Policy field will get disabled for File Type


    # PMG-20_
    # PQM-21_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15885:Validate By default Enable Password Flag will be disabled for Required file types
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    And user upload the attachment
    Then By default Enable Password Flag will be disabled for Required file types



    # PMG-21_
    # PQM-23_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15886:Validate Delete Icon should be present for all file types
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    And user upload the attachment
    Then Delete Icon should be present for all file types

    # PMG-22_
    # PQM-24_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15887:Validate deleting a File type from all present File type
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    And user upload the attachment
    Then File type should get deleted successfully

    # PQM-25_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15888:Validate document type should be present under upload documents option
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    Then document type should be present under upload documents option

    # PQM-26_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15889:Validate Autocomplete document type option should be present in document type options
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    Then Autocomplete document type option should be present in document type options

    # PQM-27_CAS-206837,28_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15890:Validate Document Code with Document Name should be present in document type options
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    Then Document Code with Document Name should be present in document type options

    # PQM-41_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario Outline: ACAUTOCAS-15891:Validate all the uploaded attachment should not be removed after switching off the attachment option
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 7
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    And user makes Attachment Option button as On
    And user searches <No_Of_Documents> in document type field simultaneously
    When user searches <No_Of_Letter> in letter type field simultaneously
    And user upload the attachment
    And user makes Attachment Option button as Off
    And user makes Attachment Option button as On
    Then all the uploaded attachment should not be removed after switching off the attachment option
    Examples:
      | No_Of_Letter | No_Of_Documents |
      | 1            | 1               |


    # PMG-23_
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15892:Validate Document Type field should be present in uploaded document sub section
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    Then Document Type field should be present in uploaded document sub section


    # PMG-25_
    # PQM-31_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario Outline: ACAUTOCAS-15893:Validate Automatic grid should get created with selected documents
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    And user searches <No_Of_Documents> in document type field simultaneously
    Then Automatic grid will get created with <No_Of_Documents> Document types

    Examples:
      | No_Of_Documents |
      | 1               |

    # PMG-26_
    # PQM-32_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario Outline: ACAUTOCAS-15894:Validate <Columns> in the in the document type grid after selecting document type
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    And user searches <No_Of_Documents> in document type field simultaneously
    Then grid "<Columns>" columns should be visible to user

    Examples:
      | Columns                        | No_Of_Documents |
      | Document Name                  | 3               |
      | Is Enable Password Applicable? | 3               |
      | Attachment Encryption Policy   | 3               |
      | Actions                        | 3               |

    # PMG-27_
    # PQM-33_CAS-206837
    # PQM-35_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario Outline: ACAUTOCAS-15895:Validate Attachment Encryption Policy field will get enabled For required document type
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    And user searches <No_Of_Documents> in document type field simultaneously
    And user select Enable Password Flag for one document type
    Then Attachment Encryption Policy field will get enabled for required document type
    Examples:
      | No_Of_Documents |
      | 1               |

    # PMG-28_
  #FeatureID-ACAUTOCAS-15338
  Scenario Outline: ACAUTOCAS-15896:Validate Attachment Encryption Policy field will get disabled For required document type
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    And user searches <No_Of_Documents> in document type field simultaneously
    And user select Enable Password Flag for one document type
    And user deselect Enable Password Flag for one document type
    Then Attachment Encryption Policy field will get disabled for Document Type
    Examples:
      | No_Of_Documents |
      | 1               |

    # PMG-29_
    # PQM-34_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario Outline: ACAUTOCAS-15897:Validate By default Enable Password Flag will be disabled for document type
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    And user searches <No_Of_Documents> in document type field simultaneously
    Then By default Enable Password Flag will be disabled for required document types
    Examples:
      | No_Of_Documents |
      | 1               |


    # PQM-51_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario Outline: ACAUTOCAS-15898:Validate all required <fields> should be visible to user with attachment as On
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    And user makes Attachment Option button as On
    When user clicks on required icon on notification master
    Then user should be able to verify these required "<fields>" in notification master
    Examples:
      | fields            |
      | Notification Code |
      | Notification Name |
      | Notification Type |
      | Subject           |


    # PMG-30_
    # PQM-36_CAS-206837,37_CAS-206837,38_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario Outline: ACAUTOCAS-15899:Validate document type should get deleted
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    And user searches <No_Of_Documents> in document type field simultaneously
    And user select Enable Password Flag for one document type
    Then document type should get deleted successfully
    Examples:
      | No_Of_Documents |
      | 1               |

    # PMG-32_
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15900:Validation should come 'Attachment Option is ON
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    And user clicks on save button on notification page
    Then proper validation should come


    # PMG-33_
    # PQM-43_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario Outline: ACAUTOCAS-15901:Validate proper validation should come if attachment encryption policy is not selected
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 7
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    And user makes Attachment Option button as On
    And user searches <No_Of_Documents> in document type field simultaneously
    And user select Enable Password Flag for one document type
    When user searches <No_Of_Letter> in letter type field simultaneously
    And user select Enable Password Flag for one letter type
    And user upload the attachment
    And user select Enable Password Flag for one File Type
    And user clicks on save button on notification page
    Then proper validation should come
    Examples:
      | No_Of_Letter | No_Of_Documents |
      | 1            | 1               |

# PQM-1_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15902:Validate Attachment option check box should be present in switch mode in a section
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    When user creates a new notification with notification type as "Email"
    Then Attachment option check box should be present in switch mode in a section

# PQM-2_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15903:Validate Attachment option check box should be present in off mode in red color
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    When user creates a new notification with notification type as "Email"
    Then It should be present in off mode in red color

# PQM-3_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15904:Validate Attachment option check box should be present in on mode in red color
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    When user creates a new notification with notification type as "Email"
    And user makes Attachment Option button as On
    Then It should be present in on mode in green color

 # PQM-5_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario Outline: ACAUTOCAS-15905:Validate <sections> of Generated Documents section
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    When user creates a new notification with notification type as "Email"
    And user makes Attachment Option button as On
    Then Both "<sections>" should be present under generated documents section
    Examples:
      | sections          |
      | Manual Attachment |
      | Upload Attachment |

    # PQM-14_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15906:Validate Upload File icon should be present under Generated Documents Section
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    When user creates a new notification with notification type as "Email"
    And user makes Attachment Option button as On
    Then Upload File icon should be visible to user

# PQM-19_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15907:Validate File name should be same as Uploaded File Name
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    And user upload the attachment
    Then File name should be same as Uploaded File Name

    # PQM-25_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario Outline: ACAUTOCAS-15908:Validate document type should be present under uploaded documents section
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    And user searches <No_Of_Documents> in document type field simultaneously
    Then document type should be present under uploaded documents section
    Examples:
      | No_Of_Documents |
      | 1               |

    # PQM-41_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15909:Validate all the uploaded attachment should be removed after user switch off the attachment option
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    And user upload the attachment
    And user makes Attachment Option button as Off
    Then all the uploaded attachment should be removed

    # PQM-42_CAS-206837,67_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15910:Validate Proper validation should come when user clicks on save without uploading any attachments
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    And user clicks on save button on notification page
    Then proper validation should come

    # PQM-52_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario Outline: ACAUTOCAS-15911:Validate Proper validation should come when user try to add duplicate letter type
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 3
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    And user makes Attachment Option button as On
    And user searches <No_Of_Letter> in letter type field simultaneously
    When user try to upload same letter again
    Then proper validation should come
    Examples:
      | No_Of_Letter |
      | 1            |

    # PQM-54_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15912:Validate Proper validation should come when user try to upload Duplicate file type
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 4
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    And user makes Attachment Option button as On
    And user upload the attachment
    When user try to upload same file again
    Then proper validation should come

    # PQM-55_CAS-206837,57_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario Outline: ACAUTOCAS-15913:Validate Proper validation should come when user try to add Duplicate document type
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 5
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    And user makes Attachment Option button as On
    And user searches <No_Of_Documents> in document type field simultaneously
    When user try to upload same document file again
    Then proper validation should come
    Examples:
      | No_Of_Documents |
      | 1               |

    # PQM-56_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15914:Validate Proper validation should come when user try to upload zip file
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 6
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    And user makes Attachment Option button as On
    When user upload the attachment of zip type
    Then proper validation should come

    # PQM-15_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15915:Validate user should be able to upload more than one file
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    And user uploads multiple attachments
    Then user should be able to upload more than one file

    # PQM-58_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15916:Validate all attachments should be present as per previous record in a cloned record
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 8
    And user navigates to Notification Master Grid
    And user searches for notification in notification master
    And user clone the notification record
    And user searches for notification in notification master
    When user opens the searched notification record
    Then all attachments should be present as per previous record in a cloned record

    # PQM-59_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15917:Validate saving a cloned record without any changes
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 9
    And user navigates to Notification Master Grid
    And user searches for notification in notification master
    And user clone the notification record
    And user searches for notification in notification master
    When user opens the searched notification record in edit mode
    And user clicks on save button on notification page
    Then proper validation should come when user saves the cloned record without any changes

    # PQM-60_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15918:Validate data should be visible in view mode in a cloned record
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 8
    And user navigates to Notification Master Grid
    And user searches for notification in notification master
    And user clone the notification record
    And user searches for notification in notification master
    When user opens the searched notification record
    Then data should be visible in view mode in a cloned record

    # PQM-60_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15919:Validate no delete option in attachments in a cloned record
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 8
    And user navigates to Notification Master Grid
    And user searches for notification in notification master
    And user clone the notification record
    And user searches for notification in notification master
    When user opens the searched notification record
    Then no delete option in attachments in a cloned record

    # PQM-61_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15920:Validate attachment option should not be visible when user changes notification type in edit mode
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 8
    And user navigates to Notification Master Grid
    And user searches for notification in notification master
    And user clone the notification record
    And user searches for notification in notification master
    When user opens the searched notification record in edit mode
    And user changes the notification type to "Sms"
    Then attachment option should not be visible when user changes notification type in edit mode

    # PQM-62_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15921:Validate attachment option should be visible in off mode when user again changes notification type to email
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 8
    And user navigates to Notification Master Grid
    And user searches for notification in notification master
    And user clone the notification record
    And user searches for notification in notification master
    When user opens the searched notification record in edit mode
    And user changes the notification type to "Sms"
    And user changes the notification type to "Email"
    Then attachment option should be visible in off mode

    # PQM-63_CAS-206837
  #FeatureID-ACAUTOCAS-15338
  Scenario: ACAUTOCAS-15922:Validate attachment option should be visible in off mode when user again changes notification type to whatsapp
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 8
    And user navigates to Notification Master Grid
    And user searches for notification in notification master
    And user clone the notification record
    And user searches for notification in notification master
    When user opens the searched notification record in edit mode
    And user changes the notification type to "Sms"
    And user changes the notification type to "WhatsApp"
    Then attachment option should be visible in off mode

  #FeatureID-ACAUTOCAS-15338
Scenario: ACAUTOCAS-18092:Validate user should be able to upload more than one file in one go
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    And user uploads multiple attachments
    Then user should be able to upload more than one file

    #FeatureID-ACAUTOCAS-15338
Scenario: ACAUTOCAS-18093:Validate when user try to search inactive document in document type validation should come
    And maker logged in "Common Masters" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
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
    And user logout from CAS
    And maker logged in "CAS" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 10
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    And user makes Attachment Option button as On
    And user search inactive document in document type
    Then proper validation should come to user of inactive document type

    #FeatureID-ACAUTOCAS-15338
Scenario Outline: ACAUTOCAS-18094:Validate error message for file size limit exceeded when user upload <UploadType> type documents
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row <rowNum>
    And user uploads file of exceed limit using upload attachment for "<UploadType>"
    Then Proper validation should come to user
    Examples:
      | UploadType | rowNum |
      | EXCEL      | 11     |
      | PDF        | 12     |

    #FeatureID-ACAUTOCAS-15338
Scenario: ACAUTOCAS-18095:Validate proper validation should come when user try to upload unsupported format file in Notification Master
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    And user uploads unsupported file format in notification master
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 6
    Then proper validation should come to user for unsupported format file


    #FeatureID-ACAUTOCAS-15338
Scenario Outline: ACAUTOCAS-18096:Validate uploading Documents with extension <Extension> in Notification Master
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row 1
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification with notification type as "Email"
    When user makes Attachment Option button as On
    And user selects document with "<Extension>" to upload in notification master
    Then required attachment should get uploaded
    Examples:
      | Extension |
      | jpg       |
      | xlsx      |
      | docx      |
      | pdf       |

    #FeatureID-ACAUTOCAS-15338
Scenario Outline: ACAUTOCAS-18097:Validate saving notification without <Field_Name> in notification master
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row <rowNum>
    When user fills the notification master details excluding field name
    And user clicks on save button on notification page
    Then "<Field_Name>" in notification master is not saved with error message
    Examples:
      | Field_Name        | rowNum |
      | Notification Code | 112    |
      | Notification Name | 113    |
      | Notification Type | 114    |
      | Subject           | 115    |
      | Template Text     | 116    |

Scenario Outline: ACAUTOCAS-18098:Validate ToolTip functionality for <Field_Name> in notification master
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    When user hover on "<Field_Name>" in notification master
    Then tooltip should be displayed for "<Field_Name>" in notification master
    Examples:
      | Field_Name               |
      | Notification Code        |
      | Notification Name        |
      | Notification Type        |
      | Notification Description |
      | Subject                  |






