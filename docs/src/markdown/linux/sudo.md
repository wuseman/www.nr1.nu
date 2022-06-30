# sudo 

### Using a single sudo to run multiple && arguments
```sh
sudo -s <<< 'apt update -y && apt upgrade -y'
```