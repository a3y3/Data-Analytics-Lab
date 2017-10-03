Lines = LOAD '/user/hduser/140911090/Lab%206/input_text' AS (line:chararray);
Words = FOREACH Lines GENERATE FLATTEN (TOKENIZE(line)) AS word;
Groups = GROUP Words BY word;
Counts = FOREACH Groups GENERATE group, COUNT(Words)
Results = ORDER Words BY Counts DESC;
Top5 = LIMIT Results 5;
STORE Top5 INTO /user/hduser/140911090/Lab%206/top5words;

