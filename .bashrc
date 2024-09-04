Host *
    UseKeychain yes
    AddKeysToAgent yes
    IdentityFile ~/.ssh/id_rsa
    ForwardX11 yes

Host rnn
    User justin
    HostName rnn.ist.berkeley.edu
    ForwardAgent yes

Host dqn
    User justin
    HostName dqn.ist.berkeley.edu
    ForwardAgent yes

Host vae
    User justin
    HostName vae.ist.berkeley.edu
    ForwardAgent yes

Host svm
    User justin
    HostName svm.bair.berkeley.edu
    ForwardAgent yes

Host perceptron
    User justin
    HostName perceptron.bair.berkeley.edu
    ForwardAgent yes

Host astar
    User justin
    HostName astar.bair.berkeley.edu
    ForwardAgent yes
