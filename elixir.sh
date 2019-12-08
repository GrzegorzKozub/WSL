# erlang and elixir

wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
sudo dpkg -i erlang-solutions_1.0_all.deb
rm erlang-solutions_1.0_all.deb

sudo apt update
sudo apt install --assume-yes esl-erlang elixir

mix local.hex --force
mix local.rebar --force
mix archive.install hex phx_new --force

cp -r /mnt/c/Users/Greg/.iex.exs ~

