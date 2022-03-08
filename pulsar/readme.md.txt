get the wallet here: https://pulsarcoin.org/ (scroll down to downloads)
----------------------------------
Once you have downloaded the wallet, enter the plusar directory and enter start the qt wallet. it should look like this: 

for GUI:
~/pulsar-1.0.0-linux64-gnu$ ./pulsar-qt -banscore=10000

for CLI:
./pulsard --server --daemon --banscore=10000
then
./pulsar-cli walletpassphrase "password" <time to unlock> <true/false>

the banscore=10000 makes sure that you dont ban nodes. Since this is a new coin, the basis for what a good node is are too strict and by default, you could ban everyone. As the network grows this wont be a requirement

after that you'll want to mine using the SRB Miner. https://github.com/doktor83/SRBMiner-Multi/releases. it is open source but the dev fee is 0.85% so I kept it. Similar to xmrig you can recompile from source to remove the fee idk where it is exactly...

Be sure to save the SRBMiner-0-9-1 directory to your home directory.
----------------------------------
So then after that, we can go about creating an SRB shell script file. 
1) cd SRBMiner-0-9-1 --> enter the SRB directory
2) vim pulsar.sh --> create a shell script called pulsar.sh; vim is a text editor
3) hit i on the keyboard --> this means "insert" in vim and actually lets the editor know you're going to type something. almost every key in vim is a shortcut and has a function (complex af) so hitting i is important.
4) follow this structure: ./SRBMiner-MULTI --algorithm curvehash --msr-use-preset 2 --msr-use-tweaks 4 --cpu-threads-intensity 2 --pool stratum+tcp://curvehash.mine.zergpool.com:3343 --wallet <WALLET_NAME_HERE> --password c=PLSR,mc=PLSR,m=party.moon,ID=<RIG_NAME_HERE>
5) then hit esc , then :qw + enter--> esc shuts off "insert mode" and :qw tells vim that you want to quit and write changes (save them to the file in question). If you do not want to save changes you would type :q! instead which is quit and override warnings about not saving (edited)
[11:46 PM]
--------------------------------------------
NOTE: --msr-use-preset 2 --msr-use-tweaks 4 --cpu-threads-intensity 2 these are optional and should only be used if you have great cooling. otherwise this may overheat your rig!!!!
---------------------------------------------
after that all it takes to mine is being in the SRBMiner-0-9-1 directory and running the shell script you made as follows:
sudo sh ./pulsar.sh it will ask for your linux password and BAM you're off to the races mining to your wallet.

addnode 109.167.134.30:5995 onetry
addnode 149.28.244.210:5995 onetry
addnode 216.128.141.31:5995 onetry
addnode 103.249.70.51:5995 onetry

addnode 39.164.244.3:5995 onetry
addnode 192.3.152.135:5995 onetry
addnode 62.122.201.178:5995 onetry
addnode 192.46.215.125:5995 onetry
addnode 95.129.58.28:5995 onetry
addnode 176.215.69.198:5995 onetry