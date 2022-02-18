{
  description = ''Flexible JSON manshal/unmarshal library for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."jdec-develop".type = "github";
  inputs."jdec-develop".owner = "riinr";
  inputs."jdec-develop".repo = "flake-nimble";
  inputs."jdec-develop".ref = "flake-pinning";
  inputs."jdec-develop".dir = "nimpkgs/j/jdec/develop";

    inputs."jdec-master".type = "github";
  inputs."jdec-master".owner = "riinr";
  inputs."jdec-master".repo = "flake-nimble";
  inputs."jdec-master".ref = "flake-pinning";
  inputs."jdec-master".dir = "nimpkgs/j/jdec/master";

    inputs."jdec-v0_1_0".type = "github";
  inputs."jdec-v0_1_0".owner = "riinr";
  inputs."jdec-v0_1_0".repo = "flake-nimble";
  inputs."jdec-v0_1_0".ref = "flake-pinning";
  inputs."jdec-v0_1_0".dir = "nimpkgs/j/jdec/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}