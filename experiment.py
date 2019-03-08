# David Noursi

import subprocess
import os

import datetime
from baselines.run import main as run_main

# Experiment Directory
date_str = datetime.date.today().strftime("%B-%d-%Y")
experiment_data_dir = "/Users/dcalifornia/baselines/experiment_logs/experiment-{}-".format(date_str)

i = 0
while os.path.isdir( experiment_data_dir + str(i)):
    i += 1
experiment_data_dir += str(i)

def make_exp_cmd(n, m, m0):
    result = '"n":{},"m":{},"m0":{}'
    result = result.format(n,m,m0)
    result = "{" + result + "}"

    result = '--alg=deepq --env=graph-search-v0 --env_kwargs={}  --num_timesteps=1e3 --print_freq=10'.format(result)

    print(result)
    return result


cwd =  "/Users/dcalifornia/baselines"
if False:
    env = os.environ
else:
    env = os.environ.copy()

# Experiment parameters iteration
ns = [60]
m0s = [30]#,40]
ms = [30]#,20,30]

i = 0
for n in ns:
    for m in ms:
        for m0 in m0s:
            env['OPENAI_LOGDIR'] = os.path.join(experiment_data_dir, str(i))
            i += 1
            cmd_str = make_exp_cmd(n,m,m0)
            sys_argv = cmd_str.split(' ')
            run_main(sys_argv)
