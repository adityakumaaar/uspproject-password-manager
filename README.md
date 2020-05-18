# USP PROJECT - PASSWORD MANAGER

## USAGE
Compile the password-manager.cpp by 
```
g++ -op password-manager.cpp
```

## STORING PASSWORDS
Execute command 
```
./p store [user's name]
```
The program executes as : 

1. If user's name is **not** passed as an option then program will prompt for user's name
2. Create a directory for that user (if it doesnt exists)
3. Ask for Website name , email id for that site, and the password

## CREATING PASSWORDS
Execute command 
```
./p store [user's name]
```

1. Works same as storing passwords but this won't prompt for password by the user
2. Uses pwgen to create secure random passwords

## RECOLLECT PASSWORDS
Execute command 
```
./p recollect [user's name]
```

1. To see all passwords enter all when prompted to enter the website to search the password from
2. If more than one password-email combo exists all will be listed in chronological fashion
