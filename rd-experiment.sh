

set -x

BASIC_LOGDIR="/Users/dcalifornia/baselines/experiment_logs/rd2"
mkdir -p $BASIC_LOGDIR
for i in {1..4}
do
    export OPENAI_LOGDIR=$BASIC_LOGDIR/$i
    thisk=$((20+6*i))
    str_kwargs='{"n":60,"k":'$thisk,'"d":3}'
    python3 -m baselines.run --alg=deepq --env=graph-search-rd-v0 --env_kwargs=$str_kwargs  --num_timesteps=8e3 --print_freq=10
    # echo "python3 -m baselines.run --alg=deepq --env=graph-search-rd-v0 --env_kwargs=$str_kwargs  --num_timesteps=2e3 --print_freq=10"
done


