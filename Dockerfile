FROM python:3.11-slim

# ffmpeg + nodejs (YouTube extraction အတွက် လိုအပ်)
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ffmpeg \
        nodejs \
        npm \
        ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt && \
    pip install -U --no-cache-dir yt-dlp

COPY bot.py .
# cookies.txt ရှိရင် ကူးမယ် (မရှိရင် error မတက်အောင်)
COPY cookies.txt* ./

RUN mkdir -p downloads

ENV PYTHONUNBUFFERED=1
ENV USE_COOKIES=0

CMD ["python", "bot.py"]
