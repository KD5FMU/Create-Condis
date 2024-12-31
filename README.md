# Create a Connect / Disconnect script file

This is a script file to help you create, make executable and place into the /etc/asterisk/local the condis.sh script file to help you build cron jobs to connect and disconnect to other nodes.

## Intallation Instructions

First of all access the terminal or initiate an ssh session into tour node. Then get to the root directory by typing the following command:
```
cd ~
```

The goto the directory where you sore your scirpt files, I prefer the /etc/asterisk/local folder. If you do not have that folder you can use this command to create it:
```
sudo mkdir /etc/asterisk/local
```
Then goto that directory"
```
cd /etc/asterisk/local
```

Now you can download the create_condis.sh script file with the following command:

```
sudo wget https://raw.githubusercontent.com/KD5FMU/Create-Condis/refs/heads/main/create_condis.sh
```

Once the scrupt file is downloaded we need to mak it executable and we can do that with this command:
```
sudo chmod +x create_condis.sh
```

Now that the file is made executable you can run it 


