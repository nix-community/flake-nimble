{
  description = ''A new awesome nimble package'';
  inputs.src-NimTacToe-master.flake = false;
  inputs.src-NimTacToe-master.type = "github";
  inputs.src-NimTacToe-master.owner = "JesterOrNot";
  inputs.src-NimTacToe-master.repo = "Nim-Tac-Toe";
  inputs.src-NimTacToe-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-NimTacToe-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-NimTacToe-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-NimTacToe-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}