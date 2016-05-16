# Repositórios adicionais a serem configurados no YUM
#yum_repositories = [
#	"https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm",
#	"https://mirror.webtatic.com/yum/el7/webtatic-release.rpm"
#]

# Timezone utilizada pelo PHP, o valor deve ser setado depois de instalar
php_timezone = "America/Sao_Paulo"

# Diretórios web
public_folder = "/vagrant"
symfony_folder = "/vagrant/symfony"

# Configurações do repositório do projeto
git_site = "github.com" #bitbucket.org
git_user = "maykelsb"
git_repo = "oficinamongo"
git_url = "https://#{git_site}/#{git_user}/#{git_repo}.git"

# Apache ServerName
httpd_servername = "apacheserv"

# Hash composer
hash_composer = "a52be7b8724e47499b039d53415953cc3d5b459b9d9c0308301f867921c19efc623b81dfef8fc2be194a5cf56945d223"

Vagrant.configure(2) do |config|
  config.vm.box = "matyunin/centos7"

  # pasta de projeto
  config.vm.synced_folder "../src_#{git_repo}", "/var/www/#{git_repo}"

  # Desligando o firewall, adicionando novos repositorios e atualizando pacotes instalados
  config.vm.provision :shell, path: "bootstrap.sh"#, args: yum_repositories

  # Provisionando o APACHE
  #config.vm.network "forwarded_port", guest: 80, host: 10080
  #config.vm.provision :shell, path: "scripts/apache.sh", args: httpd_servername

  # Configurando VHOST do projeto - repita para cada projeto
  #config.vm.provision :shell, path: "scripts/vhost.sh", args: git_repo
  
  # Adicionando o vhost ao /etc/hosts da vm
  #config.vm.provision :shell, path: "scripts/hosts.sh", args: git_repo

  # Provisionando o PHP5.6
  #config.vm.provision :shell, path: "scripts/php.sh", args: php_timezone
  
  # Provisionando o Composer
  #config.vm.provision :shell, path: "scripts/composer.sh", args: hash_composer

  # Provisionando o NPM
  #config.vm.provision :shell, path: "scripts/npm.sh"
  
  # Provisionando o Bower
  #config.vm.provision :shell, path: "scripts/bower.sh"

  # Provisionando o Symfony Installer
  #config.vm.provision :shell, path: "scripts/symfony.sh"

  # Criando um novo projeto Symfony
  # CUIDADO: este provisionamento irá apagar o diretório /var/www/#{git_repo} e todo seu conteúdo
  #config.vm.provision :shell, path: "scripts/symfony/start.sh", args: git_repo

  # Provisionamento de apps diversos: telnet
  #config.vm.provision :shell, path: "scripts/apps/telnet.sh"

  # Provisionamento de apps diversos: lynx - navegador de linha de comando
  #config.vm.provision :shell, path: "scripts/apps/lynx.sh"

  # Provisionamento do MongoDB 3.2
  #config.vm.network "forwarded_port", guest: 27017, host: 27017
  #config.vm.provision :shell, path: "scripts/mongodb.sh"

end
