
#Create srvdsk account


# Define the account name and the SID of the Administrator group
$AccountName = "srvdsk"
$AdminGroupSID = "S-1-5-32-544"

# Get the local group object by the SID
$AdminGroup = Get-LocalGroup -SID $AdminGroupSID

# Add the account to the local group
Add-LocalGroupMember -Group $AdminGroup -Member $AccountName