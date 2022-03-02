{
  description = ''Set implementation of disjoint intervals'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-intervalsets-master.flake = false;
  inputs.src-intervalsets-master.type = "github";
  inputs.src-intervalsets-master.owner = "autumngray";
  inputs.src-intervalsets-master.repo = "intervalsets";
  inputs.src-intervalsets-master.ref = "refs/heads/master";
  inputs.src-intervalsets-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-intervalsets-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-intervalsets-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-intervalsets-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}