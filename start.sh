if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Akbotmakersnew/LUCIFER-koyeb.git /LUCIFER-koyeb
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /LUCIFER-koyeb
fi
cd /LUCIFER-koyeb
pip3 install -U -r requirements.txt
echo "Starting LUCIFER-koyeb...."
python3 bot.py
