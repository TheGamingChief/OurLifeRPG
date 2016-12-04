//Initialising the civilain part of the MDS
call compile format['%1_notes = []; publicVariable "%1_notes"',player];
while {true} do{
    sleep 60;
    call compile format['%1_license = INV_LizenzOwner; publicVariable "%1_license"',player];
};