

BASIC_LOGDIR="/Users/dcalifornia/baselines/experiment_logs/ba"
mkdir $BASIC_LOGDIR
export OPENAI_LOGDIR=$BASIC_LOGDIR/i
python3 -m baselines.run --alg=deepq --env=graph-search-v0 --env_kwargs='{"n":70,"m0":20,"m":10}'  --num_timesteps=2e3 --print_freq=10



