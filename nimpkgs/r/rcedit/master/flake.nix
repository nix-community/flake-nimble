{
  description = ''A new awesome nimble package'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-rcedit-master.flake = false;
  inputs.src-rcedit-master.type = "github";
  inputs.src-rcedit-master.owner = "bung87";
  inputs.src-rcedit-master.repo = "rcedit";
  inputs.src-rcedit-master.ref = "refs/heads/master";
  inputs.src-rcedit-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-rcedit-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rcedit-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rcedit-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}