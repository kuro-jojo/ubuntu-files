echo "#### Install ZSH ####"

sudo apt update
sudo apt install zsh -y

sleep 2

echo "#### Make zsh default shell #####"

chsh -s $(which zsh)

sleep 2

echo "#### Install Oh My ZSH ####"

curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

sleep 2

echo "#### Suggestion based on history ####"

git clone https://github.com/zsh-users/zsh-autosuggestions ${Zsh_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

sleep 2
echo "#### Syntaxic correction #####"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${Zsh_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

sleep 3

echo 'alias cls="clear"'>> ~/.zshrc
echo 'alias cl="clear"'>> ~/.zshrc
echo 'alias ll="ls -al"'>> ~/.zshrc

source ~/.zshrc

sleep 2

echo "Add this line into the ./zshrc file "
echo "plugins=(git zsh-syntax-highlighting zsh-autosuggestions)"
