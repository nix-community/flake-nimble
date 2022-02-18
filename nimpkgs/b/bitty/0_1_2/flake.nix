{
  description = ''Utilities with dealing with 1d and 2d bit arrays.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-bitty-0_1_2.flake = false;
  inputs.src-bitty-0_1_2.type = "github";
  inputs.src-bitty-0_1_2.owner = "treeform";
  inputs.src-bitty-0_1_2.repo = "bitty";
  inputs.src-bitty-0_1_2.ref = "refs/tags/0.1.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bitty-0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bitty-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bitty-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}