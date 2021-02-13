# cloudflared-silent-rdp
Scripts to launch cloudflared.exe in silent command window while launching rdp.

Step by step what these scripts do
1) kill cloudflared process if it is already running - this is used to fix connection if process was not closed properly at end of script
2) if cloudflare access keys are in user profile then delete them - this forces auth every time and could likely be removed depending on your setup
3) start a command prompt in background and run cloudflare access command
4) start remote desktop session from command line
5) wait till remote desktop is closed then kill cloudflared process

Setup Steps
1) Download cloudflared.exe for windows deamon https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/install-and-setup/installation
2) Extract into C:\Cloudflared\bin - This could be changed in the script if desired
3) Download and place launch.bat and open.vbs into same folder
4) Edit launch.bat and replace [access hostname] with your cloudflare hostname and [workstation] with your workstation name that you trying to remote desktop to

Run steps - Cloudflare tunnel and access application policy must be setup prior
1) C:\Cloudflared\bin\open.vbs
- If this is working properly then a browser window should launch automatically as well as a remote desktop session. You will need to go through your access authentication process at which time you can click back onto the remote destop shortcut on the taskbar where it should be prompting you for windows credentials.

Recommended
Create a shortcut link on desktop or wherever to open.vbs - I gave mine an icon as well. This allows the user to just click the shortcut on their desktop and away they go with no pesky cmd prompt windows on their explorer.
