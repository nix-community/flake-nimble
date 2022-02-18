{
  description = ''The Nim bindings for linksplatform/Data.Triplets.Kernel.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-triplets-0_0_2.flake = false;
  inputs.src-triplets-0_0_2.type = "github";
  inputs.src-triplets-0_0_2.owner = "linksplatform";
  inputs.src-triplets-0_0_2.repo = "Data.Triplets";
  inputs.src-triplets-0_0_2.ref = "refs/tags/0.0.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-triplets-0_0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-triplets-0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-triplets-0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}