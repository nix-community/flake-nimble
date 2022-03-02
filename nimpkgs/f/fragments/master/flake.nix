{
  description = ''Our very personal collection of utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-fragments-master.flake = false;
  inputs.src-fragments-master.type = "github";
  inputs.src-fragments-master.owner = "fragcolor-xyz";
  inputs.src-fragments-master.repo = "fragments";
  inputs.src-fragments-master.ref = "refs/heads/master";
  inputs.src-fragments-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fragments-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fragments-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fragments-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}