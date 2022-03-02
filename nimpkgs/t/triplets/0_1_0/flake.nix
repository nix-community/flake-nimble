{
  description = ''The Nim bindings for linksplatform/Data.Triplets.Kernel.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-triplets-0_1_0.flake = false;
  inputs.src-triplets-0_1_0.type = "github";
  inputs.src-triplets-0_1_0.owner = "linksplatform";
  inputs.src-triplets-0_1_0.repo = "Data.Triplets";
  inputs.src-triplets-0_1_0.ref = "refs/tags/0.1.0";
  inputs.src-triplets-0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-triplets-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-triplets-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-triplets-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}