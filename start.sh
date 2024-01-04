if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Pooja0033/LazyPrincessbot /LazyPrincessbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /LazyPrincessbot
fi
cd /LazyPrincessbot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
