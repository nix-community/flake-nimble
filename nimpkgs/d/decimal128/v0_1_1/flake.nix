{
  description = ''Decimal type support based on the IEEE 754 2008 specification.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-decimal128-v0_1_1.flake = false;
  inputs.src-decimal128-v0_1_1.type = "github";
  inputs.src-decimal128-v0_1_1.owner = "JohnAD";
  inputs.src-decimal128-v0_1_1.repo = "decimal128";
  inputs.src-decimal128-v0_1_1.ref = "refs/tags/v0.1.1";
  inputs.src-decimal128-v0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-decimal128-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-decimal128-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-decimal128-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}