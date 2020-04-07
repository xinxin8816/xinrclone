# Grab the latest xinrclone image
FROM xinxin8816/xinrclone:latest

# Add your config
ADD ./config /root/
WORKDIR /root

# Run the image as a system user
RUN adduser --system myuser
USER myuser

# Run the app. CMD is required to run on Heroku
# $PORT is set by Heroku
CMD gunicorn --bind 0.0.0.0:$PORT wsgi
