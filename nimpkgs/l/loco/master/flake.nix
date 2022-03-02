{
  description = ''Localization package for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-loco-master.flake = false;
  inputs.src-loco-master.type = "github";
  inputs.src-loco-master.owner = "moigagoo";
  inputs.src-loco-master.repo = "loco";
  inputs.src-loco-master.ref = "refs/heads/master";
  inputs.src-loco-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-loco-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-loco-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-loco-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}