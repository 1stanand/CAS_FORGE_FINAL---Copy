@Epic-CAS
@AuthoredBy-CASForge
@ImplementedBy-CASForge
@ReviewedBy-CASForge
@AppInfo
@UnorderedFlow
@CAS-270826

#${ProductType:["HL","PL"]}
#${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
#${ApplicantType:["indiv","nonindiv"]}   ## If needed

Feature: ATDD - Committee Decision Logic Change

    Background:
        Given user is on CAS Login Page
        And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


    Scenario Outline: The Committee Decision screen should display the final verdict as APPROVED when 4 members approve and 1 member votes any
        Given user is on CAS Login Page
        And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
        And user is on the Committee Approval screen
        When user view the Decision Details accordian at committee approval when Decision taken as approve at credit approval stage
        And user views data from workbook "<SourceFile>" under sheet name in "<SheetName>" and row number as "<rownum>" accordingly
        Then user should be able to view the fields with provided values

        @Generated
        Examples:
            | ProductType | ApplicationStage | SourceFile | SheetName | rownum |
            | <ProductType> | <ApplicationStage> | <SourceFile> | <SheetName> | <rownum> |

    Scenario Outline: The Committee Decision screen should display the final verdict as APPROVED when 4 members approve and 1 member votes any - Variant 2
        Given Authorized user select comments in Activity Tab
        And user selects reason for committee decision as "<Reason>"
        And user click on save in committee approval
        And deviation should be saved successfully with message "Manual Deviations Saved"
        When user initiate committee approval
        Then committee decision status display pending for all the committee members
        And committee verdict should be "<VerdictAfterPreviousVote>" for "<CommitteeType>"

        @Generated
        Examples:
            | ProductType | ApplicationStage | UserDecision | Reason | VerdictAfterPreviousVote | CommitteeType |
            | <ProductType> | <ApplicationStage> | <UserDecision> | <Reason> | <VerdictAfterPreviousVote> | <CommitteeType> |

    Scenario Outline: The Committee Decision screen should display the final verdict as REJECTED when 4 members reject and 1 member votes any
        Given user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
        And user open committee approval grid
        And search the initiated committee approval application
        And user opens the initiated committee approval application for current user
        When user selects decision as "Reject" in Decision Details Section
        And user selects reason for committee decision as "Not Approved"
        And user click on save in committee approval
        Then committee decision should be saved successfully

        @Generated
        Examples:
            | ProductType | ApplicationStage | MemberNumber |
            | <ProductType> | <ApplicationStage> | <MemberNumber> |

    Scenario Outline: The Committee Decision screen should display the final verdict as REJECTED when 4 members reject and 1 member votes any - Variant 2
        Given Authorized user select comments in Activity Tab
        And user selects reason for committee decision as "<Reason>"
        And user click on save in committee approval
        And deviation should be saved successfully with message "Manual Deviations Saved"
        When user initiate committee approval
        Then committee decision status display pending for all the committee members
        And committee verdict should be "<VerdictAfterPreviousVote>" for "<CommitteeType>"

        @Generated
        Examples:
            | ProductType | ApplicationStage | UserDecision | Reason | VerdictAfterPreviousVote | CommitteeType |
            | <ProductType> | <ApplicationStage> | <UserDecision> | <Reason> | <VerdictAfterPreviousVote> | <CommitteeType> |

    Scenario Outline: The Committee Decision screen should display the final verdict as Approved when 3 members approve and 2 members reject
        Given user is on CAS Login Page
        And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
        And user is on the Committee Approval screen
        When user view the Decision Details accordian at committee approval when Decision taken as approve at credit approval stage
        And user views data from workbook "<SourceFile>" under sheet name in "<SheetName>" and row number as "<rownum>" accordingly
        Then user should be able to view the fields with provided values

        @Generated
        Examples:
            | ProductType | ApplicationStage | SourceFile | SheetName | rownum |
            | <ProductType> | <ApplicationStage> | <SourceFile> | <SheetName> | <rownum> |

    Scenario Outline: The Committee Decision screen should display the final verdict as Approved when 3 members approve and 2 members reject - Variant 2
        Given Authorized user select comments in Activity Tab
        And user selects reason for committee decision as "<Reason>"
        And user click on save in committee approval
        And deviation should be saved successfully with message "Manual Deviations Saved"
        When user initiate committee approval
        Then committee decision status display pending for all the committee members
        And committee verdict should be "<VerdictAfterPreviousVote>" for "<CommitteeType>"

        @Generated
        Examples:
            | ProductType | ApplicationStage | UserDecision | Reason | VerdictAfterPreviousVote | CommitteeType |
            | <ProductType> | <ApplicationStage> | <UserDecision> | <Reason> | <VerdictAfterPreviousVote> | <CommitteeType> |

    Scenario Outline: The Committee Decision screen should display the final verdict as Mixed when votes are split
        Given Authorized user select comments in Activity Tab
        And user selects reason for committee decision as "<Reason>"
        And user click on save in committee approval
        And deviation should be saved successfully with message "Manual Deviations Saved"
        When user initiate committee approval
        Then "<Committee>" should display
        And committee verdict should be "<VerdictAfterPreviousVote>" for "<CommitteeType>"

        @Generated
        Examples:
            | ProductType | ApplicationStage | UserDecision | Reason | VerdictAfterPreviousVote | CommitteeType | Committee |
            | <ProductType> | <ApplicationStage> | <UserDecision> | <Reason> | <VerdictAfterPreviousVote> | <CommitteeType> | <Committee> |

    Scenario Outline: The Committee Decision screen should display the final verdict as Mixed when votes are split - Variant 2
        Given user is on CAS Login Page
        And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
        And user is on the Committee Approval screen
        When user view the Decision Details accordian at committee approval when Decision taken as approve at credit approval stage
        And user views data from workbook "<SourceFile>" under sheet name in "<SheetName>" and row number as "<rownum>" accordingly
        Then user should be able to view the fields with provided values

        @Generated
        Examples:
            | ProductType | ApplicationStage | SourceFile | SheetName | rownum |
            | <ProductType> | <ApplicationStage> | <SourceFile> | <SheetName> | <rownum> |

    Scenario Outline: The system should not finalize the verdict prematurely
        Given Authorized user select comments in Activity Tab
        And user selects reason for committee decision as "<Reason>"
        And user click on save in committee approval
        And deviation should be saved successfully with message "Manual Deviations Saved"
        When user initiate committee approval
        Then user should not be able to see any committee tasks for "<CommitteeType>"
        And committee verdict should be "<VerdictAfterPreviousVote>" for "<CommitteeType>"

        @Generated
        Examples:
            | ProductType | ApplicationStage | UserDecision | Reason | VerdictAfterPreviousVote | CommitteeType |
            | <ProductType> | <ApplicationStage> | <UserDecision> | <Reason> | <VerdictAfterPreviousVote> | <CommitteeType> |

    Scenario Outline: The system should not block a verdict indefinitely
        Given Authorized user select comments in Activity Tab
        And user selects reason for committee decision as "<Reason>"
        And user click on save in committee approval
        And deviation should be saved successfully with message "Manual Deviations Saved"
        When user initiate committee approval
        Then user should not be able to see any committee tasks for "<CommitteeType>"
        And committee verdict should be "<VerdictAfterPreviousVote>" for "<CommitteeType>"

        @Generated
        Examples:
            | ProductType | ApplicationStage | UserDecision | Reason | VerdictAfterPreviousVote | CommitteeType |
            | <ProductType> | <ApplicationStage> | <UserDecision> | <Reason> | <VerdictAfterPreviousVote> | <CommitteeType> |

    Scenario Outline: The Committee Decision screen should display the final verdict as per the majority view when votes are split
        Given user is on CAS Login Page
        And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
        And user is on the Committee Approval screen
        When user view the Decision Details accordian at committee approval when Decision taken as approve at credit approval stage
        And user views data from workbook "<SourceFile>" under sheet name in "<SheetName>" and row number as "<rownum>" accordingly
        Then user should be able to view the fields with provided values

        @Generated
        Examples:
            | ProductType | ApplicationStage | SourceFile | SheetName | rownum |
            | <ProductType> | <ApplicationStage> | <SourceFile> | <SheetName> | <rownum> |

    Scenario Outline: The Committee Decision screen should display the final verdict as per the majority view when votes are split - Variant 2
        Given Authorized user select comments in Activity Tab
        And user selects reason for committee decision as "<Reason>"
        And user click on save in committee approval
        And deviation should be saved successfully with message "Manual Deviations Saved"
        When user initiate committee approval
        Then "<Committee>" should display
        And committee verdict should be "<VerdictAfterPreviousVote>" for "<CommitteeType>"

        @Generated
        Examples:
            | ProductType | ApplicationStage | UserDecision | Reason | VerdictAfterPreviousVote | CommitteeType | Committee |
            | <ProductType> | <ApplicationStage> | <UserDecision> | <Reason> | <VerdictAfterPreviousVote> | <CommitteeType> | <Committee> |

    Scenario Outline: The Committee Decision screen should display the final verdict as REJECTED when all members reject
        Given user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
        And user open committee approval grid
        And search the initiated committee approval application
        And user opens the initiated committee approval application for current user
        When user selects decision as "Reject" in Decision Details Section
        And user selects reason for committee decision as "Not Approved"
        And user click on save in committee approval
        Then committee decision should be saved successfully

        @Generated
        Examples:
            | ProductType | ApplicationStage | MemberNumber |
            | <ProductType> | <ApplicationStage> | <MemberNumber> |

    Scenario Outline: The Committee Decision screen should display the final verdict as REJECTED when all members reject - Variant 2
        Given Authorized user select comments in Activity Tab
        And user selects reason for committee decision as "<Reason>"
        And user click on save in committee approval
        And deviation should be saved successfully with message "Manual Deviations Saved"
        When user initiate committee approval
        Then committee decision status display pending for all the committee members
        And committee verdict should be "<VerdictAfterPreviousVote>" for "<CommitteeType>"

        @Generated
        Examples:
            | ProductType | ApplicationStage | UserDecision | Reason | VerdictAfterPreviousVote | CommitteeType |
            | <ProductType> | <ApplicationStage> | <UserDecision> | <Reason> | <VerdictAfterPreviousVote> | <CommitteeType> |

    Scenario Outline: The Committee Decision screen should display the final verdict as APPROVED when all members approve
        Given user is on CAS Login Page
        And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
        And user is on the Committee Approval screen
        When user view the Decision Details accordian at committee approval when Decision taken as approve at credit approval stage
        And user views data from workbook "<SourceFile>" under sheet name in "<SheetName>" and row number as "<rownum>" accordingly
        Then user should be able to view the fields with provided values

        @Generated
        Examples:
            | ProductType | ApplicationStage | SourceFile | SheetName | rownum |
            | <ProductType> | <ApplicationStage> | <SourceFile> | <SheetName> | <rownum> |

    Scenario Outline: The Committee Decision screen should display the final verdict as APPROVED when all members approve - Variant 2
        Given Authorized user select comments in Activity Tab
        And user selects reason for committee decision as "<Reason>"
        And user click on save in committee approval
        And deviation should be saved successfully with message "Manual Deviations Saved"
        When user initiate committee approval
        Then committee decision status display pending for all the committee members
        And committee verdict should be "<VerdictAfterPreviousVote>" for "<CommitteeType>"

        @Generated
        Examples:
            | ProductType | ApplicationStage | UserDecision | Reason | VerdictAfterPreviousVote | CommitteeType |
            | <ProductType> | <ApplicationStage> | <UserDecision> | <Reason> | <VerdictAfterPreviousVote> | <CommitteeType> |

    Scenario Outline: The Committee Decision screen should display the final verdict as Declared as soon as majority is mathematically reached
        Given user is on CAS Login Page
        And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
        And user is on the Committee Approval screen
        When user view the Decision Details accordian at committee approval when Decision taken as approve at credit approval stage
        And user views data from workbook "<SourceFile>" under sheet name in "<SheetName>" and row number as "<rownum>" accordingly
        Then user should be able to view the fields with provided values

        @Generated
        Examples:
            | ProductType | ApplicationStage | SourceFile | SheetName | rownum |
            | <ProductType> | <ApplicationStage> | <SourceFile> | <SheetName> | <rownum> |

    Scenario Outline: The Committee Decision screen should display the final verdict as Declared as soon as majority is mathematically reached - Variant 2
        Given Authorized user select comments in Activity Tab
        And user selects reason for committee decision as "<Reason>"
        And user click on save in committee approval
        And deviation should be saved successfully with message "Manual Deviations Saved"
        When user initiate committee approval
        Then "<Committee>" should display
        And committee verdict should be "<VerdictAfterPreviousVote>" for "<CommitteeType>"

        @Generated
        Examples:
            | ProductType | ApplicationStage | UserDecision | Reason | VerdictAfterPreviousVote | CommitteeType | Committee |
            | <ProductType> | <ApplicationStage> | <UserDecision> | <Reason> | <VerdictAfterPreviousVote> | <CommitteeType> | <Committee> |

    Scenario Outline: The Committee Status screen should remain open until all member decisions are captured
        Given user is on CAS Login Page
        And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
        And user is on the Committee Approval screen
        When user view the Decision Details accordian at committee approval when Decision taken as approve at credit approval stage
        And user views data from workbook "<SourceFile>" under sheet name in "<SheetName>" and row number as "<rownum>" accordingly
        Then user should be able to view the fields with provided values

        @Generated
        Examples:
            | ProductType | ApplicationStage | SourceFile | SheetName | rownum |
            | <ProductType> | <ApplicationStage> | <SourceFile> | <SheetName> | <rownum> |

    Scenario Outline: The Committee Status screen should remain open until all member decisions are captured - Variant 2
        Given user is on CAS Login Page
        And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
        When user selects any application from grid on committee approval screen
        And user expands the decision deatails
        Then Decision Details section should be expanded

        @Generated
        Examples:
            | ProductType | ApplicationStage |
            | <ProductType> | <ApplicationStage> |

    Scenario Outline: The Committee Decision screen should display the final verdict as Approved when all members approve and the majority rule is applied
        Given user is on CAS Login Page
        And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
        And user is on the Committee Approval screen
        When user view the Decision Details accordian at committee approval when Decision taken as approve at credit approval stage
        And user views data from workbook "<SourceFile>" under sheet name in "<SheetName>" and row number as "<rownum>" accordingly
        Then user should be able to view the fields with provided values

        @Generated
        Examples:
            | ProductType | ApplicationStage | SourceFile | SheetName | rownum |
            | <ProductType> | <ApplicationStage> | <SourceFile> | <SheetName> | <rownum> |

    Scenario Outline: The Committee Decision screen should display the final verdict as Approved when all members approve and the majority rule is applied - Variant 2
        Given Authorized user select comments in Activity Tab
        And user selects reason for committee decision as "<Reason>"
        And user click on save in committee approval
        And deviation should be saved successfully with message "Manual Deviations Saved"
        When user initiate committee approval
        Then committee decision status display pending for all the committee members
        And committee verdict should be "<VerdictAfterPreviousVote>" for "<CommitteeType>"

        @Generated
        Examples:
            | ProductType | ApplicationStage | UserDecision | Reason | VerdictAfterPreviousVote | CommitteeType |
            | <ProductType> | <ApplicationStage> | <UserDecision> | <Reason> | <VerdictAfterPreviousVote> | <CommitteeType> |
