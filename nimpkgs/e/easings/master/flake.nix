{
  description = ''Robert Penner Easing Functions for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-easings-master.flake = false;
  inputs.src-easings-master.type = "github";
  inputs.src-easings-master.owner = "juancarlospaco";
  inputs.src-easings-master.repo = "nim-easings";
  inputs.src-easings-master.ref = "refs/heads/master";
  inputs.src-easings-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-easings-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-easings-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-easings-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}