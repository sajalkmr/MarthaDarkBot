if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/sajalkmr/MarthaDarkBot.git /MarthaDarkBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MarthaDarkBot
fi
cd /MarthaDarkBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
