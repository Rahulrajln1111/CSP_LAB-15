#!/bin/bash
file=$1
str=''
if [ -z $file ]
then 
	echo "usasge: ./q1_gen_tex.sh csvfile"
else
for line in $(echo  "$(cat $file)"); do
  line=$(echo -n $line|tr ',' '&')
  str+=$(echo  "$line \\\\ ")
  str+=$'\n'
done

	echo  "\documentclass{article}
\usepackage{longtable}

\begin{document}
	\hspace*{-5cm}
	\begin{tabular}{|l|l|l|l|l|l|l|l|l|l|l|l|l|l|}
		\hline
		\textbf{Age} & \textbf{Sex} & \textbf{CP} & \textbf{Trestbps} & \textbf{Chol} & \textbf{FBS} & \textbf{Restecg} & \textbf{Thalach} & \textbf{Exang} & \textbf{Oldpeak} & \textbf{Slope} & \textbf{CA} & \textbf{Thal} & \textbf{Target} \\\\
		\hline
		%$str
	\end{tabular}
	
\end{document}

" > file.tex
fi