{
  description = ''Haraka v2 short-input hash function'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."haraka-master".type = "github";
  inputs."haraka-master".owner = "riinr";
  inputs."haraka-master".repo = "flake-nimble";
  inputs."haraka-master".ref = "flake-pinning";
  inputs."haraka-master".dir = "nimpkgs/h/haraka/master";

    inputs."haraka-v0_1_0".type = "github";
  inputs."haraka-v0_1_0".owner = "riinr";
  inputs."haraka-v0_1_0".repo = "flake-nimble";
  inputs."haraka-v0_1_0".ref = "flake-pinning";
  inputs."haraka-v0_1_0".dir = "nimpkgs/h/haraka/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}