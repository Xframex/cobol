       IDENTIFICATION DIVISION.
       PROGRAM-ID. Studentrecord.
       AUTHOR. ismail.
       
       ENVIRONMENT DIVISION. 
       INPUT-OUTPUT SECTION.
       FILE-CONTROL. 
           SELECT EntrantsFile ASSIGN TO "students.Dat"
               ORGANIZATION IS LINE SEQUENTIAL.
           SELECT SummaryReports ASSIGN TO "SummaryStudent.Dat".

       DATA DIVISION.
       FILE SECTION.
       FD EntrantsFile.
       01 StudentRecord.
           88 EndOfEntrantsFile VALUE HIGH-VALUES.
           02 StudentId         PIC 9(8).
           02 CourseCode        PIC X(5).
           02 Gender            PIC X. 
      
       FD SummaryReports.
       01 PrintLine              PIC X(35).

       WORKING-STORAGE SECTION.
       01 HeadingLine1 PIC X(31) VALUE " First Year Entrants Summary".
       01 HeadingLine2 PIC X(31) VALUE " Course Code NumOfStudents". 

       01 CourseLine.
           02 FILLER         PIC X(5) VALUE SPACES.
           02 PrnCourseCode  PIC X(5).
           02 FILLER         PIC X(10) VALUE SPACES.
           02 PrnCourseTotal PIC BBZZ9.

       01 FinalTotalLine.
           02 FILLER PIC X(19) VALUE " Total Students:".
           02 PrnFinalTotal PIC BZ,ZZ9. 

       01 CourseTotal         PIC 9(4) VALUE ZEROS.
       01 FinalTotal          PIC 9(5) VALUE ZEROS.
       01 PrevCourseCode      PIC X(5) VALUE ZEROS.

       PROCEDURE DIVISION.
       ProduceSummaryReport.
           OPEN INPUT EntrantsFile
           OPEN OUTPUT SummaryReports
           WRITE PrintLine FROM HeadingLine1 AFTER ADVANCING PAGE
           WRITE PrintLine FROM HeadingLine2 AFTER ADVANCING 2 LINES
           READ EntrantsFile
               AT END SET EndOfEntrantsFile TO TRUE
           END-READ
           PERFORM UNTIL EndOfEntrantsFile
               MOVE CourseCode TO PrnCourseCode
               MOVE CourseCode TO PrevCourseCode
               MOVE ZEROS TO CourseTotal
               PERFORM UNTIL CourseCode NOT = PrevCourseCode
                   ADD 1 TO CourseTotal
                   ADD 1 TO FinalTotal
                   READ EntrantsFile
                       AT END SET EndOfEntrantsFile TO TRUE
                   END-READ
               END-PERFORM
               MOVE CourseTotal TO PrnCourseTotal
               WRITE PrintLine FROM CourseLine AFTER ADVANCING 1 LINE
           END-PERFORM
           MOVE FinalTotal TO PrnFinalTotal
           WRITE PrintLine FROM FinalTotalLine AFTER ADVANCING 2 LINES
           CLOSE EntrantsFile
           CLOSE SummaryReports
           STOP RUN.
