       IDENTIFICATION DIVISION.
       PROGRAM-ID. Listing5-6.
       AUTHOR. Michael Coughlan.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT StudentFile ASSIGN TO "Listing5-6-TData.Dat"
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD StudentFile.
       01 StudentDetails.
           88 EndOfStudentFile VALUE HIGH-VALUES.
           02 StudentId PIC X(8).
           02 StudentName PIC X(25).
           02 CourseCode PIC X(5).

       WORKING-STORAGE SECTION.
       01 EndOfFileSwitch PIC X VALUE 'N'.

       PROCEDURE DIVISION.
       Begin.
           OPEN INPUT StudentFile
           PERFORM UNTIL EndOfFileSwitch = 'Y'
               READ StudentFile
                   AT END
                       MOVE 'Y' TO EndOfFileSwitch
                       SET EndOfStudentFile TO TRUE
                   NOT AT END
                       DISPLAY "Student ID: " StudentId
                       DISPLAY "Student Name: " StudentName
                       DISPLAY "Course Code: " CourseCode
                       DISPLAY "----------------------"
               END-READ
           END-PERFORM
           CLOSE StudentFile
           STOP RUN.
