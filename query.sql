SELECT tbl_report.YEAR, tbl_report.MONTH, tbl_question.ID, tbl_question.QUESTION , tbl_answer.ANSWER, tbl_question.TYPEID
FROM tbl_ait_rpt_reportanswer AS tbl_answer
	JOIN tbl_ait_rpt_reportquestion AS tbl_question
		ON tbl_answer.QUESTIONID = tbl_question.ID
	JOIN tbl_ait_rpt_reportheader AS tbl_report
		ON tbl_answer.REPORTID = tbl_report.ID
WHERE tbl_report.MAJLISID = 'dortmund' AND tbl_report.YEAR >= 2013 AND tbl_report.YEAR <= 2013 AND tbl_report.MONTH >= 8 AND tbl_report.MONTH <= 9
ORDER BY tbl_report.YEAR ASC, tbl_report.MONTH ASC