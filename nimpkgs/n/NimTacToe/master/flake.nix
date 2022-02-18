{
  description = ''A new awesome nimble package'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-NimTacToe-master.flake = false;
  inputs.src-NimTacToe-master.type = "github";
  inputs.src-NimTacToe-master.owner = "JesterOrNot";
  inputs.src-NimTacToe-master.repo = "Nim-Tac-Toe";
  inputs.src-NimTacToe-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-NimTacToe-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-NimTacToe-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-NimTacToe-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}