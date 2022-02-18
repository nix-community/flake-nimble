{
  description = ''Library for working with arbitrary values + a map data structure.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-values-0_1_1.flake = false;
  inputs.src-values-0_1_1.type = "github";
  inputs.src-values-0_1_1.owner = "nim-appkit";
  inputs.src-values-0_1_1.repo = "values";
  inputs.src-values-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-values-0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-values-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-values-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}