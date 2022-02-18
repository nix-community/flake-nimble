{
  description = ''Decimal type support based on the IEEE 754 2008 specification.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-decimal128-v0_1_2.flake = false;
  inputs.src-decimal128-v0_1_2.type = "github";
  inputs.src-decimal128-v0_1_2.owner = "JohnAD";
  inputs.src-decimal128-v0_1_2.repo = "decimal128";
  inputs.src-decimal128-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-decimal128-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-decimal128-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-decimal128-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}