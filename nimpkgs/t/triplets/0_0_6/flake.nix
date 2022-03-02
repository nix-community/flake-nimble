{
  description = ''The Nim bindings for linksplatform/Data.Triplets.Kernel.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-triplets-0_0_6.flake = false;
  inputs.src-triplets-0_0_6.type = "github";
  inputs.src-triplets-0_0_6.owner = "linksplatform";
  inputs.src-triplets-0_0_6.repo = "Data.Triplets";
  inputs.src-triplets-0_0_6.ref = "refs/tags/0.0.6";
  inputs.src-triplets-0_0_6.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-triplets-0_0_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-triplets-0_0_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-triplets-0_0_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}