rem daily AutoMRIQA

echo " " >> C:\autoMRISimQAResource\dailyQAlog.txt
echo " " >>C:\autoMRISimQAResource\dailyQAlog.txt
date /T >> C:\autoMRISimQAResource\dailyQAlog.txt
time /T >> C:\autoMRISimQAResource\dailyQAlog.txt

echo daily autoMRIQA script running >> C:\autoMRISimQAResource\dailyQAlog.txt

echo map V: drive >> C:\autoMRISimQAResource\dailyQAlog.txt



NET USE v: /delete


net use v: \\nswhealth.net\swslhd\SHARED  >> C:\autoMRISimQAResource\dailyQAlog.txt


dir : v:\CTC-LiverpoolOncology\DICOM\MRI_SIM_incoming >> C:\autoMRISimQAResource\dailyQAlog.txt


:: call program to do QA. 

echo Run autoMRISimQATimerClinicTest.exe >> C:\autoMRISimQAResource\dailyQAlog.txt



C:\autoMRISimQAResource\compiledEXE\testing\autoMRISimQATimerClinicTest.exe  >> C:\autoMRISimQAResource\dailyQAlog.txt


date /T >> C:\autoMRISimQAResource\dailyQAlog.txt
time /T >> C:\autoMRISimQAResource\dailyQAlog.txt

rem echo deleting all files under V:\CTC-LiverpoolOncology\DICOM\MRI_SIM_incoming\MRISIM_Warmup_0_MRISIM_DAILY^WARMUP  >> C:\autoMRISimQAResource\dailyQAlog.txt


rem del  /q  "V:\CTC-LiverpoolOncology\DICOM\MRI_SIM_incoming\MRISIM_Warmup_0_MRISIM_DAILY^WARMUP\*.*"

rem echo all MRI images files were deleted.  >> C:\autoMRISimQAResource\dailyQAlog.txt


echo Job finished  >> C:\autoMRISimQAResource\dailyQAlog.txt







