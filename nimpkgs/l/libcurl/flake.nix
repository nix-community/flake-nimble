{
  description = ''Nim wrapper for libcurl.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."libcurl-master".type = "github";
  inputs."libcurl-master".owner = "riinr";
  inputs."libcurl-master".repo = "flake-nimble";
  inputs."libcurl-master".ref = "flake-pinning";
  inputs."libcurl-master".dir = "nimpkgs/l/libcurl/master";

    inputs."libcurl-v1_0_0".type = "github";
  inputs."libcurl-v1_0_0".owner = "riinr";
  inputs."libcurl-v1_0_0".repo = "flake-nimble";
  inputs."libcurl-v1_0_0".ref = "flake-pinning";
  inputs."libcurl-v1_0_0".dir = "nimpkgs/l/libcurl/v1_0_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}