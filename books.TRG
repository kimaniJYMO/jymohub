TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` trigger issue_books\nBEFORE DELETE on books\nfor each row \nBEGIN\ninsert into boooksunavailable (access_no,callno,author_name,isbn_no,Ccategory_name,book_title) values(old.access_no,old.callno,old.author_name,old.isbn_no,old.Ccategory_name,old.book_title);\nend'
sql_modes=0
definers='root@localhost'
client_cs_names='latin1'
connection_cl_names='latin1_swedish_ci'
db_cl_names='latin1_swedish_ci'
