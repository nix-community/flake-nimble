{
  description = ''A new awesome nimble package'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimtactoe-master.flake = false;
  inputs.src-nimtactoe-master.type = "github";
  inputs.src-nimtactoe-master.owner = "JesterOrNot";
  inputs.src-nimtactoe-master.repo = "nim-tac-Toe";
  inputs.src-nimtactoe-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimtactoe-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimtactoe-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimtactoe-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}