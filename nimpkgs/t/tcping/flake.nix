{
  description = ''Ping hosts using tcp packets'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."tcping-master".type = "github";
  inputs."tcping-master".owner = "riinr";
  inputs."tcping-master".repo = "flake-nimble";
  inputs."tcping-master".ref = "flake-pinning";
  inputs."tcping-master".dir = "nimpkgs/t/tcping/master";

    inputs."tcping-v1_0_0".type = "github";
  inputs."tcping-v1_0_0".owner = "riinr";
  inputs."tcping-v1_0_0".repo = "flake-nimble";
  inputs."tcping-v1_0_0".ref = "flake-pinning";
  inputs."tcping-v1_0_0".dir = "nimpkgs/t/tcping/v1_0_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}