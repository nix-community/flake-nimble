{
  description = ''A Nim implementation of the Stalin Sort algorithm.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-stalinsort-v0_2_2.flake = false;
  inputs.src-stalinsort-v0_2_2.type = "github";
  inputs.src-stalinsort-v0_2_2.owner = "tonogram";
  inputs.src-stalinsort-v0_2_2.repo = "stalinsort";
  inputs.src-stalinsort-v0_2_2.ref = "refs/tags/v0.2.2";
  inputs.src-stalinsort-v0_2_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-stalinsort-v0_2_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stalinsort-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-stalinsort-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}