bible
=====

Get bible text in your shell.

```
Usage: ./bible.sh passage [version]
  Passage should be <book>_<chapter>:<verse>. 
  Verses can be omitted or a range can be specified.
  A range of chapters can be specified.
  Multiple passages can be looked up by separating them with a ;
  Example: Jer_29:11;John_3:16-17;Ps_23
```

To capture the output of this script into a vim buffer add this to your vimrc (assuming bible.sh is in your $PATH):
```
command! -nargs=* -complete=shellcmd Bible new | setlocal buftype=nofile bufhidden=hide noswapfile | r !bible.sh <args>
```
