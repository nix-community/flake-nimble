{
  description = ''std / sha1 extension'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."sha1ext-develop".type = "github";
  inputs."sha1ext-develop".owner = "riinr";
  inputs."sha1ext-develop".repo = "flake-nimble";
  inputs."sha1ext-develop".ref = "flake-pinning";
  inputs."sha1ext-develop".dir = "nimpkgs/s/sha1ext/develop";

    inputs."sha1ext-master".type = "github";
  inputs."sha1ext-master".owner = "riinr";
  inputs."sha1ext-master".repo = "flake-nimble";
  inputs."sha1ext-master".ref = "flake-pinning";
  inputs."sha1ext-master".dir = "nimpkgs/s/sha1ext/master";

    inputs."sha1ext-v0_1".type = "github";
  inputs."sha1ext-v0_1".owner = "riinr";
  inputs."sha1ext-v0_1".repo = "flake-nimble";
  inputs."sha1ext-v0_1".ref = "flake-pinning";
  inputs."sha1ext-v0_1".dir = "nimpkgs/s/sha1ext/v0_1";

    inputs."sha1ext-v0_1_1".type = "github";
  inputs."sha1ext-v0_1_1".owner = "riinr";
  inputs."sha1ext-v0_1_1".repo = "flake-nimble";
  inputs."sha1ext-v0_1_1".ref = "flake-pinning";
  inputs."sha1ext-v0_1_1".dir = "nimpkgs/s/sha1ext/v0_1_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}