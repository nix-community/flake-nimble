{
  description = ''A high-performance ini parse library for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-parseini-master.flake = false;
  inputs.src-parseini-master.type = "github";
  inputs.src-parseini-master.owner = "lihf8515";
  inputs.src-parseini-master.repo = "parseini";
  inputs.src-parseini-master.ref = "refs/heads/master";
  inputs.src-parseini-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-parseini-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-parseini-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-parseini-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}