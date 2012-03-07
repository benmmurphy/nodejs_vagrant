#Nodejs for Ubuntu Oneiric

    gem install vagrant
    
    git clone git://github.com/benmmurphy/nodejs_vagrant.git
    cd nodejs_vagrant
    
    vagrant box add vagrant-oneiric https://github.com/downloads/benmmurphy/nodejs_vagrant/package_4.1.8.box
    vagrant up
    vagrant ssh-config >> ~/.ssh/config

    git clone git://github.com/benmmurphy/nodejs_vagrant_helloworld.git
    cd nodejs_vagrant_helloworld
    cap deploy:setup
    cap deploy

    ssh default

    curl -v http://localhost:3000



