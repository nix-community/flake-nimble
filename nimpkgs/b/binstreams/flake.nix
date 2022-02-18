{
  description = ''Endianness aware stream I/O for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."binstreams-master".type = "github";
  inputs."binstreams-master".owner = "riinr";
  inputs."binstreams-master".repo = "flake-nimble";
  inputs."binstreams-master".ref = "flake-pinning";
  inputs."binstreams-master".dir = "nimpkgs/b/binstreams/master";

    inputs."binstreams-v0_1_0".type = "github";
  inputs."binstreams-v0_1_0".owner = "riinr";
  inputs."binstreams-v0_1_0".repo = "flake-nimble";
  inputs."binstreams-v0_1_0".ref = "flake-pinning";
  inputs."binstreams-v0_1_0".dir = "nimpkgs/b/binstreams/v0_1_0";

    inputs."binstreams-v0_1_1".type = "github";
  inputs."binstreams-v0_1_1".owner = "riinr";
  inputs."binstreams-v0_1_1".repo = "flake-nimble";
  inputs."binstreams-v0_1_1".ref = "flake-pinning";
  inputs."binstreams-v0_1_1".dir = "nimpkgs/b/binstreams/v0_1_1";

    inputs."binstreams-v0_2_0".type = "github";
  inputs."binstreams-v0_2_0".owner = "riinr";
  inputs."binstreams-v0_2_0".repo = "flake-nimble";
  inputs."binstreams-v0_2_0".ref = "flake-pinning";
  inputs."binstreams-v0_2_0".dir = "nimpkgs/b/binstreams/v0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}