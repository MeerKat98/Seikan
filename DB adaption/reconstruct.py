import datetime

def writeTo(filename, wf):
    rf = open(filename,'r')
    lines = rf.read()
    rf.close()
    wf.write('\n\n')
    wf.write(lines)

#Clear or create new reconstruct file
writefile = open("reconstruct.sql",'w')

#Add date and time this script compiled reconstruct.sql
time = '--Last reconstruction: ' + str(datetime.datetime.now())
writefile.write(time)

#Add contents of Drop_DB_obj.sql
writeTo("../Drop_DB_obj.sql",writefile)

#Add contents of CREATE_TABLES.sql
writeTo("../CREATE_TABLES.sql",writefile)

#Add contents of trigger files
writefile.write("\n\n--Run each trigger as an individual statements by highlighting them")
writeTo("../Triggers/tgr_containerID.sql",writefile)
writeTo("../Triggers/tgr_dockingID.sql",writefile)
writeTo("../Triggers/tgr_manifestID.sql",writefile)
writeTo("../Triggers/tgr_shipID.sql",writefile)
writeTo("../Triggers/tgr_spaceportID.sql",writefile)

writefile.close()