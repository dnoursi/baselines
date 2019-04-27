

set -x

export OPENAI_LOGDIR="~/logdir/logar/"
mkdir -p $OPENAI_LOGDIR
python3 -m baselines.run --alg=deepq --env=AirRaidNoFrameskip-v0 --num_timesteps=8e6 --print_freq=100

export OPENAI_LOGDIR="~/logdir/logsq/"
mkdir -p $OPENAI_LOGDIR
python3 -m baselines.run --alg=deepq --env=SeaquestNoFrameskip-v0 --num_timesteps=8e6 --print_freq=100

export OPENAI_LOGDIR="~/logdir/logsi/"
mkdir -p $OPENAI_LOGDIR
python3 -m baselines.run --alg=deepq --env=SpaceInvadersNoFrameskip-v0 --num_timesteps=8e6 --print_freq=100

export OPENAI_LOGDIR="~/logdir/logal/"
mkdir -p $OPENAI_LOGDIR
python3 -m baselines.run --alg=deepq --env=AtlantisNoFrameskip-v0 --num_timesteps=8e6 --print_freq=100



