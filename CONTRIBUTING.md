### New Bash functions
When adding a new function, remember to adhere to the following:

1. Write the code for your function in the format `function_name.sh` in either `/.bash_functions/MacOS`, `/.bash_functions/Linux`, or both, depending on what your function is compatible with.
2. Test your function:
   * For MacOS, use your own machine/environment.
   * For Linux, please find a CentOS docker container by running `/tests/run.sh`. Within the container, use the following to test your function:
```
$ cd ~/Konphig
$ chmod +x install.sh
$ ./install.sh
$ source ~/.bashrc
```
If the above steps work, test your function. If the function works as expected, continue.

3. Once tested, add your function to the list of functions `/tests/functions.txt`. Generate a new functions table for `functions.md` with `python3 ~/Konphig/tests/tablegen.py -f functions.txt -c COLS -r ROWS`, so that the table looks decent (see `function.md` for example for what values to use for `-c COLS` and `-r ROWS`).
4. Update the table at the top of `functions.md` with the output from Step 3. Don't check the output file of Step 3 into git. Write some documentation for the new function in `functions.md`, following the format used for other functions (Usage, Dependencies, Compatibility, etc.).
5. Push to git and open a PR!
