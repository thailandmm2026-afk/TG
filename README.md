# All-in-One Video + Channel Post Bot

## Railway Deploy

1. New Project → Deploy from GitHub (or upload)
2. Variables ထည့်ပါ:
   - API_ID
   - API_HASH
   - BOT_TOKEN
   - ADMIN_IDS (သင့် Telegram ID)
   - USE_COOKIES=0
3. Dockerfile ကို သုံးထားပြီးသား (ffmpeg + node ပါပြီး)
4. Deploy ပြီး Logs ကြည့်ပါ

## Local Run

```bash
pip install -r requirements.txt
pip install -U yt-dlp
# .env ဖိုင် ဖန်တီးပြီး API_ID, API_HASH, BOT_TOKEN, ADMIN_IDS ထည့်
python bot.py
```

## Usage
- /setchannel → Channel username သို့မဟုတ် -100 ID
- Bot ကို Channel မှာ Admin ပေး
- Link ပို့ → Edit / Post
