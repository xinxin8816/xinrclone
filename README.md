# XinRclone 
XinRclone is a toolbox. 

### How to Use
1. Register Heroku, install [Heroku-CLI](https://devcenter.heroku.com/articles/heroku-cli#download-and-install) and [Docker Desktop](https://www.docker.com/products/docker-desktop). [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) is Optional.
2. Run command to login in CMD or Powershell, and pull or download this repository zip.
```sh
heroku login
heroku container:login
git clone https://github.com/xinxin8816/xinrclone.git
```
3. Setup Rclone/Gclone/Autorclone and iKOA. Copy your service accounts Json to folder *accounts*, iKOA Config file *config.toml* and Rclone Config file *rclone.conf*.
4. There have some bugs for Automatic script, Please run these commands manually.
```sh
docker pull xinxin8816/xinrclone:0.4
heroku create -a $name
heroku container:push web -a $name
heroku container:release web -a $name
```
4. ~~Edit *creater.ps1* line 1 to name your app whatever, then exec, it will run these commands automatically.~~
5. Open CMD or Powershell, Start your container with name and Enjoy it.
```sh
heroku run bash -a $name
```
