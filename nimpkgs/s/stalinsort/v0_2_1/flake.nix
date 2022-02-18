{
  description = ''A Nim implementation of the Stalin Sort algorithm.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-stalinsort-v0_2_1.flake = false;
  inputs.src-stalinsort-v0_2_1.type = "github";
  inputs.src-stalinsort-v0_2_1.owner = "tonogram";
  inputs.src-stalinsort-v0_2_1.repo = "stalinsort";
  inputs.src-stalinsort-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-stalinsort-v0_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stalinsort-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-stalinsort-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}