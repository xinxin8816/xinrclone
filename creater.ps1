$name="xinrclone"

docker pull xinxin8816/xinrclone
heroku create -a $name
heroku container:push web -a $name
heroku container:release web -a $name

echo $name" Deployed"
pause