

export OPENAI_LOGDIR="/Users/dcalifornia/baselines/experiment_logs/experiment8"
python3 -m baselines.run --alg=deepq --env=graph-search-v0 --env_kwargs='{"n":60,"m":30,"m0":30}'  --num_timesteps=2e3 --print_freq=10



