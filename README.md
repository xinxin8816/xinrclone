# XinRclone 
XinRclone is a toolbox for DMM.

### How to Use
1. Sign up Heroku, install [Heroku-CLI](https://devcenter.heroku.com/articles/heroku-cli#download-and-install) and [Docker Desktop](https://www.docker.com/products/docker-desktop). [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) is optional.
2. Run command to log in Heroku by CMD or Powershell, and clone repository or download this repository zip to local.
```sh
heroku login
heroku container:login
git clone https://github.com/xinxin8816/xinrclone.git
```
3. Setup Rclone/Gclone/Autorclone and iKOA. Copy your service accounts json to the *accounts* folder, iKOA config file *config.toml* and Rclone config file *rclone.conf* to the *config* folder.
4. There have some bugs for automatic script, please run these commands to setup your container by CMD or Powershell manually, $name whatever you like.
```sh
docker pull xinxin8816/xinrclone:latest
heroku create -a $name
heroku container:push web -a $name
heroku container:release web -a $name
```
4. ~~Edit *Creater.ps1* line 1 to name your app whatever, then exec, it will run these commands automatically.~~
5. Start your container with $name by CMD or Powershell and Enjoy it. 
```sh
heroku run bash -a $name
```
