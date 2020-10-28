#! /bin/sh

LOGFILE="logfile.txt"

if_dir_exists_do(){
    #FAIL BY DEFAULT!
    echo "FROM FUNCTION\n\t $1:"
    SOMEDIR=$1
    RETVAL=1
    if [ -d "$SOMEDIR" ]; then
    {
        echo "\t\tdir ["$SOMEDIR"]" >> $LOGFILE
        RETVAL=0
    }; else {
        echo "Warning:\t\tdir ["$SOMEDIR"]\t\t\tdoes not exist" >> $LOGFILE
        mkdir $SOMEDIR
        MKDIRRES = $?
        echo "Resolution:\t\tdir ["$SOMEDIR"]\t\t\t\tCREATED["$MKDIRRES"]" >> $LOGFILE
    } fi
    return $RETVAL
}

# TESTEXPECTED="FAIL"
# TESTINPUT="BLAH-BLAH"
# echo "EXPECTED RESULT er["$TESTEXPECTED"] - with input i["$TESTINPUT"]"
# SOMEVALUE=$(if_dir_exists_do $TESTINPUT) 
# echo "RET-VALUE WAS:"$SOMEVALUE

# mkdir stuffandjunk
# TESTEXPECTED="PASS"
# TESTINPUT="stuffandjunk"
# echo "EXPECTED RESULT er["$TESTEXPECTED"] - with input i["$TESTINPUT"]"
# SOMEVALUE=$(if_dir_exists_do $TESTINPUT) 
# echo "RET-VALUE WAS:"$SOMEVALUE
# rmdir stuffandjunk

# mkdir stuffandjunk
# TESTEXPECTED="PASS"
# TESTINPUT="stuffandjunk"
# echo "EXPECTED RESULT er["$TESTEXPECTED"] - with input i["$TESTINPUT"]"
# SOMEVALUE=$(if_dir_exists_do $TESTINPUT) 
# echo "RET-VALUE WAS:"$SOMEVALUE
# rmdir stuffandjunk

#TESTEXPECTED="FAIL"
TESTINPUT="BLAH-BLAH"
#echo "EXPECTED RESULT er["$TESTEXPECTED"] - with input i["$TESTINPUT"]"
SOMEVALUE=$(if_dir_exists_do $TESTINPUT) 
echo "RET-VALUE WAS:"$SOMEVALUE

