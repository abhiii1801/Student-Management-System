package main

import (
    "database/sql"
    "fmt"
	"time"
    _ "github.com/go-sql-driver/mysql"
)

func connect_database() *sql.DB {
    dsn := "root:qwerty123@tcp(127.0.0.1:3306)/college"
    db, err := sql.Open("mysql", dsn)
    if err != nil {
        fmt.Println("Error opening database:", err)
        return nil
    }
    return db
}

func validate_user_student(db *sql.DB, uid string) string {
    rows, err := db.Query(`SELECT s.first_name
                            FROM students s
                            JOIN enrollments e
                            ON s.student_id = e.student_id
                            WHERE e.enrollment_id = ?;`, uid)
    if err != nil {
        fmt.Println("Query error:", err)
        return "" 
    }
    defer rows.Close() 

    var name string
    if rows.Next() { 
        err := rows.Scan(&name)
        if err != nil {
            fmt.Println("Error scanning row:", err)
            return ""
        }
    }

    return name
}

func profile_management_student(db *sql.DB, uid string){
	Choice_loop:
	for{
		time.Sleep(1*time.Second)
		fmt.Println("\n1. View Personal Details\n2. Update Details\n3. Back to Menu")
		fmt.Printf("Choose Option: ")
		var choice int
		fmt.Scan(&choice)

		switch choice {
		case 1:
			// personal_info := make(map[string]string)
			rows, err := db.Query(`SELECT s.first_name, s.last_name, s.gender, s.email, s.phone, s.dob, s.address
								FROM students s
								JOIN enrollments e
								ON s.student_id = e.student_id
								WHERE e.enrollment_id = ?;`, uid)

			if err != nil {
				fmt.Println("Query error:", err)
				return
			}

			if rows.Next() {
				fmt.Println("Displaying Profile Info")
				var first_name, last_name, gender, email, phone, dob, address string
				err := rows.Scan(&first_name, &last_name, &gender, &email, &phone, &dob, &address)
				if err != nil {
					fmt.Println("Error scanning row:", err)
					return
				}
				time.Sleep(1* time.Second)
				fmt.Printf("First Name: %v\n", first_name)
				fmt.Printf("Last Name: %v\n", last_name)
				fmt.Printf("Gender: %v\n", gender)
				fmt.Printf("Email: %v\n", email)
				fmt.Printf("Phone: %v\n", phone)
				fmt.Printf("Date of Birth: %v\n", dob)
				fmt.Printf("Address: %v\n", address)
			}
			rows.Close()

		case 2:
			fmt.Printf("Select One to Update: \n1. Email\n2. Phone\n3. Address\n4. Cancel")
			var choice int
			fmt.Printf(">> ")
			fmt.Scan(&choice)
			switch choice{
			case 1:
				fmt.Printf("Enter Email: ")
				var email string
				fmt.Scan(&email)
				_,err := db.Exec(`Update students 
				set email = ?
				where student_id = (select student_id 
									from enrollments 
									where enrollment_id = ?);`,email,uid)
				if err != nil {
					fmt.Println("Query error:", err)
					return
				}

				fmt.Println("Email Updated Successfully")
			case 2:
				fmt.Printf("Enter Phone: ")
				var phone string
				fmt.Scan(&phone)
				_,err := db.Exec(`Update students
				set phone = ?
				where student_id = (select student_id 
									from enrollments 
									where enrollment_id = ?);`,phone,uid)
				if err != nil {
					fmt.Println("Query error:", err)
					return
				}

				fmt.Println("Phone Updated Successfully")
			case 3:
				fmt.Printf("Enter Address: ")
				var address string
				fmt.Scan(&address)
				_,err := db.Exec(`Update students
				set address = ?
				where student_id = (select student_id 
									from enrollments 
									where enrollment_id = ?);`,address,uid)
				if err != nil {
					fmt.Println("Query error:", err)
					return
				}

				fmt.Println("Address Updated Successfully")
			
			case 4:
				break
			}

		case 3:
			break Choice_loop

		}

	}
}

func course_sub_management_student(db *sql.DB, uid string){
	choice_loop:
	for{
		println("\n1. Display My Course\n2. Display all available Courses\n3. Back to Menu")
		fmt.Printf("Enter Choice: ")
		var choice int
		fmt.Scan(&choice)
		switch choice{
		case 1:
			course,err := db.Query(`Select *    
									from courses where course_id =(Select course_id from enrollments where enrollment_id = '23CS1012');`)
			
			if err!=nil{
				fmt.Println("Query error:", err)
				return
			}

			if course.Next(){
				println("\nDisplaying Enrolled Course: ")
				var course_id, course_name, course_desc, credits string
				err := course.Scan(&course_id, &course_name, &course_desc, &credits)
				if err!=nil{
					fmt.Println("Error scanning row:", err)
					return
				}
				time.Sleep(1* time.Second)
				fmt.Printf("Course Id: %s\n", course_id)
				fmt.Printf("Course Name: %s\n", course_name)
				fmt.Printf("Course Description: %s\n", course_desc)
				fmt.Printf("Total Credits: %s\n", credits)
			}

			subjects, err := db.Query(`Select s.subject_id, s.subject_name, s.subject_desc, s.credits
										from subjects s
										join coursesubjects c
										on s.subject_id = c.subject_id
										where course_id = (Select course_id from enrollments where enrollment_id = ?);`, uid)

			if err!=nil{
				fmt.Println("Query error:", err)
				return
			}

			time.Sleep(2*time.Second)
			fmt.Println("\nDisplaying Course Subjects :")
			fmt.Printf("%-15s %-30s %-15s %-30s\n", "Subject_ID", "Subject_Name", "Subject_Credits", "Subject_Desc")
			for subjects.Next(){
				var subject_id, subject_name, subject_desc, subject_credits string
				err := subjects.Scan(&subject_id, &subject_name, &subject_credits, &subject_desc)
				if err!=nil{
					fmt.Println("Error scanning row:", err)
					return
				}
				fmt.Printf("%-15s %-30s %-15s %-30s\n", subject_id, subject_name, subject_desc, subject_credits)
			}
			time.Sleep(2*time.Second)
		
		case 2:
			courses,err := db.Query(`Select * from courses;`)
			if err!=nil{
				fmt.Println("Query error:", err)
				return
			}
			fmt.Printf("Displaying all Available Courses\n")
			time.Sleep(1*time.Second)

			fmt.Printf("%-15s %-50s %-15s %-30s\n", "Course_ID", "Course_Name", "Course_Credits", "Course_Desc")
			for courses.Next(){
				var course_id, course_name, course_desc, credits string
				err := courses.Scan(&course_id, &course_name, &course_desc, &credits)
				if err!=nil{
					fmt.Println("Error scanning row:", err)
					return
				}

				fmt.Printf("%-15s %-50s %-15s %-30s\n", course_id, course_name, credits, course_desc)
			}

		case 3:
			break choice_loop
		}
	}	
}

func attendance_student(db *sql.DB, uid string) {
	rows, err := db.Query(`
		SELECT a.attendance_date, s.subject_name, a.attendance_status
		FROM Attendance a
		JOIN CourseTimetable ct ON a.timetable_id = ct.timetable_id
		JOIN Subjects s ON ct.subject_id = s.subject_id
		WHERE a.enrollment_id = ?
		ORDER BY a.attendance_date DESC
		LIMIT 10`, uid)
		
	if err != nil {
		fmt.Println("Query error:", err)
		return
	}
	defer rows.Close()

	fmt.Println("\nRecent Attendance:")
	fmt.Printf("%-12s %-30s %-10s\n", "Date", "Subject", "Status")
	for rows.Next() {
		var date string
		var subject string
		var status string
		err := rows.Scan(&date, &subject, &status)
		if err != nil {
			fmt.Println("Error scanning row:", err)
			return
		}
		fmt.Printf("%-12s %-30s %-10s\n", date, subject, status)
	}
}

func grades_student(db *sql.DB, uid string) {
	rows, err := db.Query(`
		SELECT s.subject_name, g.grade, g.assessment_type
		FROM Grades g
		JOIN Subjects s ON g.subject_id = s.subject_id
		WHERE g.enrollment_id = ?
		ORDER BY s.subject_name, g.assessment_type`, uid)
	if err != nil {
		fmt.Println("Query error:", err)
		return
	}
	defer rows.Close()

	fmt.Println("\nGrades:")
	fmt.Printf("%-30s %-10s %-20s\n", "Subject", "Grade", "Assessment Type")
	for rows.Next() {
		var subject string
		var grade float64
		var assessmentType string
		err := rows.Scan(&subject, &grade, &assessmentType)
		if err != nil {
			fmt.Println("Error scanning row:", err)
			return
		}
		fmt.Printf("%-30s %-10.2f %-20s\n", subject, grade, assessmentType)
	}
}

func timetable_student(db *sql.DB, uid string) {
	rows, err := db.Query(`
		SELECT ct.day_of_week, ct.start_time, ct.end_time, s.subject_name, ct.location, ct.period
		FROM CourseTimetable ct
		JOIN Subjects s ON ct.subject_id = s.subject_id
		JOIN Enrollments e ON ct.course_id = e.course_id
		WHERE e.enrollment_id = ?
		ORDER BY FIELD(ct.day_of_week, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'), ct.start_time`, uid)
	if err != nil {
		fmt.Println("Query error:", err)
		return
	}
	defer rows.Close()

	fmt.Println("\nTimetable:")
	fmt.Printf("%-10s %-10s %-10s %-30s %-20s %-10s\n", "Day", "Start", "End", "Subject", "Location", "Period")
	for rows.Next() {
		var day, start, end, subject, location string
		var period int
		err := rows.Scan(&day, &start, &end, &subject, &location, &period)
		if err != nil {
			fmt.Println("Error scanning row:", err)
			return
		}
		fmt.Printf("%-10s %-10s %-10s %-30s %-20s %-10d\n", day, start, end, subject, location, period)
	}
}

func fee_management_student(db *sql.DB, uid string) {
	rows, err := db.Query(`
		SELECT trans_id, amount, trans_date, payment_method, fee_status
		FROM Fees
		WHERE enrollment_id = ?
		ORDER BY trans_date DESC`, uid)
	if err != nil {
		fmt.Println("Query error:", err)
		return
	}
	defer rows.Close()

	fmt.Println("\nFee Transactions:")
	fmt.Printf("%-10s %-10s %-12s %-15s %-10s\n", "Trans ID", "Amount", "Date", "Method", "Status")
	for rows.Next() {
		var transID int
		var amount float64
		var transDate, paymentMethod, feeStatus string
		err := rows.Scan(&transID, &amount, &transDate, &paymentMethod, &feeStatus)
		if err != nil {
			fmt.Println("Error scanning row:", err)
			return
		}
		fmt.Printf("%-10d $%-9.2f %-12s %-15s %-10s\n", transID, amount, transDate, paymentMethod, feeStatus)
	}
}

func validate_user_teacher(db *sql.DB, t_id string) string {
    rows, err := db.Query(`SELECT first_name 
                            FROM teachers 
                            WHERE teacher_id = ?;`, t_id)
    if err != nil {
        fmt.Println("Query error:", err)
        return "" 
    }
    defer rows.Close() 

    var name string
    if rows.Next() { 
        err := rows.Scan(&name)
        if err != nil {
            fmt.Println("Error scanning row:", err)
            return ""
        }
    }

    return name
}

func profile_management_teacher(db *sql.DB, t_id string) {
	Choice_loop:
	for {
		time.Sleep(1 * time.Second)
		fmt.Println("\n1. View Personal Details\n2. Update Details\n3. Back to Menu")
		fmt.Printf("Choose Option: ")
		var choice int
		fmt.Scan(&choice)

		switch choice {
		case 1:
			rows, err := db.Query(`SELECT first_name, last_name, email, phone, department_id
								   FROM teachers
								   WHERE teacher_id = ?;`, t_id)
			if err != nil {
				fmt.Println("Query error:", err)
				return
			}
			defer rows.Close()

			if rows.Next() {
				fmt.Println("Displaying Profile Info")
				var first_name, last_name, email, phone, department_id string
				err := rows.Scan(&first_name, &last_name, &email, &phone, &department_id)
				if err != nil {
					fmt.Println("Error scanning row:", err)
					return
				}
				time.Sleep(1 * time.Second)
				fmt.Printf("First Name: %v\n", first_name)
				fmt.Printf("Last Name: %v\n", last_name)
				fmt.Printf("Email: %v\n", email)
				fmt.Printf("Phone: %v\n", phone)
				fmt.Printf("Department ID: %v\n", department_id)
			}

		case 2:
			fmt.Printf("Select One to Update: \n1. Email\n2. Phone\n3. Cancel")
			var updateChoice int
			fmt.Printf(">> ")
			fmt.Scan(&updateChoice)
			switch updateChoice {
			case 1:
				fmt.Printf("Enter Email: ")
				var email string
				fmt.Scan(&email)
				_, err := db.Exec(`UPDATE teachers SET email = ? WHERE teacher_id = ?;`, email, t_id)
				if err != nil {
					fmt.Println("Update error:", err)
					return
				}
				fmt.Println("Email Updated Successfully")
			case 2:
				fmt.Printf("Enter Phone: ")
				var phone string
				fmt.Scan(&phone)
				_, err := db.Exec(`UPDATE teachers SET phone = ? WHERE teacher_id = ?;`, phone, t_id)
				if err != nil {
					fmt.Println("Update error:", err)
					return
				}
				fmt.Println("Phone Updated Successfully")
			case 3:
				break
			}

		case 3:
			break Choice_loop
		}
	}
}

func course_sub_management_teacher(db *sql.DB, t_id string) {
	fmt.Println("Displaying You Alloted Subjects: ")
	time.Sleep(1 * time.Second)

	rows, err := db.Query(`Select s.subject_id, s.subject_name
							from teachers t
							Join teachersubjects ts
							ON t.teacher_id = ts.teacher_id
							join subjects s
							on ts.subject_id = s.subject_id
							where t.teacher_id = ?;`, t_id)

	if err!=nil{
		fmt.Println("Query error:", err)
		return
	}
	fmt.Printf("\n%-10s %-10s\n", "Subject_Id", "Subject_Name")
	for rows.Next() {
		var subject_id, subject_name string
		err := rows.Scan(&subject_id, &subject_name)
		if err!=nil{
			fmt.Println("Error scanning row:", err)
			return
		}
		fmt.Printf("%-10s %-10s\n", subject_id, subject_name)
	}
}

func student_management_teacher(db *sql.DB, t_id string) {
	var count int
	err := db.QueryRow(`
		SELECT COUNT(DISTINCT s.student_id)
		FROM Students s
		JOIN Enrollments e ON s.student_id = e.student_id
		JOIN Courses c ON e.course_id = c.course_id
		JOIN CourseTimetable ct ON c.course_id = ct.course_id
		WHERE ct.teacher_id = ?`, t_id).Scan(&count)
	if err != nil {
		fmt.Println("Error fetching student count:", err)
		return
	}

	fmt.Printf("\nTotal number of enrolled students: %d\n", count)

	fmt.Print("Do you want to see the list of all students? (yes/no): ")
	var answer string
	fmt.Scan(&answer)

	if answer != "yes" && answer != "y" {
		return
	}

	rows, err := db.Query(`
		SELECT DISTINCT s.student_id, s.first_name, s.last_name, e.enrollment_id, c.course_name
		FROM Students s
		JOIN Enrollments e ON s.student_id = e.student_id
		JOIN Courses c ON e.course_id = c.course_id
		JOIN CourseTimetable ct ON c.course_id = ct.course_id
		WHERE ct.teacher_id = ?
		ORDER BY c.course_name, s.last_name, s.first_name`, t_id)
	if err != nil {
		fmt.Println("Error fetching students:", err)
		return
	}
	defer rows.Close()

	fmt.Println("\nEnrolled Students:")
	time.Sleep(1 * time.Second)
	fmt.Printf("%-10s %-20s %-20s %-15s %-30s\n", "Student ID", "First Name", "Last Name", "Enrollment ID", "Course Name")
	for rows.Next() {
		var studentID int
		var firstName, lastName, enrollmentID, courseName string
		err := rows.Scan(&studentID, &firstName, &lastName, &enrollmentID, &courseName)
		if err != nil {
			fmt.Println("Error scanning student row:", err)
			continue
		}
		fmt.Printf("%-10d %-20s %-20s %-15s %-30s\n", studentID, firstName, lastName, enrollmentID, courseName)
	}
}

func timetable_teacher(db *sql.DB, t_id string) {
	rows, err := db.Query(`
		SELECT ct.day_of_week, ct.start_time, ct.end_time, s.subject_name, ct.location, c.course_name, ct.period
		FROM CourseTimetable ct
		JOIN Subjects s ON ct.subject_id = s.subject_id
		JOIN Courses c ON ct.course_id = c.course_id
		WHERE ct.teacher_id = ?`, t_id)
	if err != nil {
		fmt.Println("Query error:", err)
		return
	}
	defer rows.Close()

	fmt.Println("\nYour Timetable:")
	time.Sleep(1 * time.Second)
	fmt.Printf("%-10s %-10s %-10s %-30s %-20s %-30s %-10s\n", "Day", "Start", "End", "Subject", "Location", "Course", "Period")
	for rows.Next() {
		var day, start, end, subject, location, course string
		var period int
		err := rows.Scan(&day, &start, &end, &subject, &location, &course, &period)
		if err != nil {
			fmt.Println("Error scanning row:", err)
			return
		}
		fmt.Printf("%-10s %-10s %-10s %-30s %-20s %-30s %-10d\n", day, start, end, subject, location, course, period)
	}
}

func main() {
    fmt.Println("Student Management System")
    db := connect_database()
    if db == nil {
        fmt.Println("Connection error")
        return 
    } else {
        fmt.Println("Connection successful")
        defer db.Close()
    }

    fmt.Printf("1. Student Login\n2. Teacher Login\nSelect user type: ") 

    var user_type int
    fmt.Scan(&user_type)

    switch user_type {
    case 1:
        var uid string
        for {
            fmt.Print("Enter UID: ")
            fmt.Scan(&uid)

            name := validate_user_student(db, uid)
            if name != "" {
                fmt.Printf("Hi, %s !!\n", name)
				time.Sleep(1 * time.Second)
                break
            } else {
                fmt.Println("No student found with the given UID.")
            }
        }

        Choice_loop:
        for {
            var choice int
            fmt.Println("1. Profile Management\n2. Course and Subject Management\n3. Attendance\n4. Grades\n5. Timetable\n6. Fee Management \n7. Exit")
            fmt.Print("Choose an Option: ")
            fmt.Scan(&choice)

            switch choice {
            case 1:
                fmt.Printf("Profile Management")
				profile_management_student(db,uid)
            case 2:
                fmt.Printf("Course and Subject Management")
				course_sub_management_student(db,uid)
            case 3:
                fmt.Printf("Attendance")
				attendance_student(db,uid)
            case 4:
                fmt.Printf("Grades")
				grades_student(db,uid)
            case 5:
                fmt.Printf("Timetable")
				timetable_student(db,uid)
            case 6:
                fmt.Printf("Fee Management")
				fee_management_student(db,uid)
            case 7:
                fmt.Printf("Exiting...")
                break Choice_loop
            default:
                fmt.Printf("Invalid choice")
            }
        }

    case 2:
        var t_id string
        for {
            fmt.Print("Enter Teacher's ID: ")
            fmt.Scan(&t_id)

            name := validate_user_teacher(db, t_id)
            if name != "" {
                fmt.Printf("Hi, %s !!\n", name)
                break 
            } else {
                fmt.Println("No Teacher found with the given UID.")
            }
        }
		time.Sleep(1*time.Second)
        Choice_loop2:
        for {
            var choice int
			time.Sleep(1*time.Second)
            fmt.Println("1. Profile Management\n2. Course and Subject Management\n3. Student Management\n4. Assessment Management\n5. Attendance Tracking\n6. Timetable\n7. Reports\n8. Exit")
            fmt.Print("Choose an Option: ")
            fmt.Scan(&choice)

            switch choice {
            case 1:
                fmt.Println("Profile Management")
				profile_management_teacher(db, t_id)
            case 2:
                fmt.Println("Course and Subject Management")
				course_sub_management_teacher(db, t_id)
            case 3:
                fmt.Println("Student Management")
				student_management_teacher(db, t_id)
            case 4:
                fmt.Println("Assessment Management")
            case 5:
                fmt.Println("Attendance Tracking")
            case 6:
                fmt.Println("Timetable")
				timetable_teacher(db, t_id)
            case 7:
                fmt.Println("Reports")
            case 8:
                fmt.Println("Exiting...")
                break Choice_loop2
            default:
                fmt.Println("Invalid choice")
            }
        }

    default:
        fmt.Println("Invalid user type")
    }
}
