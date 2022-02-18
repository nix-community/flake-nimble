{
  description = ''Bindings for picohttpparser.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."picohttpparser-master".type = "github";
  inputs."picohttpparser-master".owner = "riinr";
  inputs."picohttpparser-master".repo = "flake-nimble";
  inputs."picohttpparser-master".ref = "flake-pinning";
  inputs."picohttpparser-master".dir = "nimpkgs/p/picohttpparser/master";

    inputs."picohttpparser-0_10_0".type = "github";
  inputs."picohttpparser-0_10_0".owner = "riinr";
  inputs."picohttpparser-0_10_0".repo = "flake-nimble";
  inputs."picohttpparser-0_10_0".ref = "flake-pinning";
  inputs."picohttpparser-0_10_0".dir = "nimpkgs/p/picohttpparser/0_10_0";

    inputs."picohttpparser-0_9_0".type = "github";
  inputs."picohttpparser-0_9_0".owner = "riinr";
  inputs."picohttpparser-0_9_0".repo = "flake-nimble";
  inputs."picohttpparser-0_9_0".ref = "flake-pinning";
  inputs."picohttpparser-0_9_0".dir = "nimpkgs/p/picohttpparser/0_9_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}