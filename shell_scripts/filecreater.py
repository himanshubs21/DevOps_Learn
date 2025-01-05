import os

file_names = [
    "1_Time_Announcer.sh",
    "2_System_Uptime_Monitor.sh",
    "3_Interactive_File_Size_Check.sh",
    "4_Countdown_With_User_Input.sh",
    "5_Interactive_Currency_Converter.sh",
    "6_Simple_File_Change_Monitor.sh",
    "7_Real_Time_Fortune_Teller.sh",
    "8_Simple_System_Info_Display.sh",
    "9_Free_Disk_Space_Monitor.sh",
    "10_Simple_File_Watcher.sh",
    "11_Network_Health_Monitoring_Tool.sh",
    "12_Log_File_Analyzer.sh",
    "13_User_Account_and_Permission_Audit_Script.sh"
]

for i in file_names:
    with os.fdopen(os.open(i, os.O_CREAT | os.O_RDWR),"w") as file:
        pass
    os.chmod(i, 0o755)

    print(f"file {i} created successfully and made executable")
