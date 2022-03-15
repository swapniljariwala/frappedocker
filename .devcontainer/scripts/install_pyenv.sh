git clone --depth 1 https://github.com/pyenv/pyenv.git .pyenv 
pyenv install $PYTHON_VERSION_V12
pyenv install $PYTHON_VERSION   
pyenv global $PYTHON_VERSION $PYTHON_VERSION_V12    
sed -Ei -e '/^([^#]|$)/ {a export PYENV_ROOT="/home/frappe/.pyenv" a export PATH="$PYENV_ROOT/bin:$PATH" a ' -e ':a' -e '$!{n;ba};}' ~/.profile     && echo 'eval "$(pyenv init --path)"' >>~/.profile     && echo 'eval "$(pyenv init -)"' >>~/.bashrc # buildkit
