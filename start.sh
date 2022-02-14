if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/as6823917/Rashmika.git /Rashmika
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Rashmika 
fi
cd /Rashmika
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
