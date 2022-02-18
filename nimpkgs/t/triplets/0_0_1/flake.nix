{
  description = ''The Nim bindings for linksplatform/Data.Triplets.Kernel.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-triplets-0_0_1.flake = false;
  inputs.src-triplets-0_0_1.type = "github";
  inputs.src-triplets-0_0_1.owner = "linksplatform";
  inputs.src-triplets-0_0_1.repo = "Data.Triplets";
  inputs.src-triplets-0_0_1.ref = "refs/tags/0.0.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-triplets-0_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-triplets-0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-triplets-0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}