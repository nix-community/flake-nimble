{
  description = ''libp2p implementation in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."libp2p-master".type = "github";
  inputs."libp2p-master".owner = "riinr";
  inputs."libp2p-master".repo = "flake-nimble";
  inputs."libp2p-master".ref = "flake-pinning";
  inputs."libp2p-master".dir = "nimpkgs/l/libp2p/master";

    inputs."libp2p-unstable".type = "github";
  inputs."libp2p-unstable".owner = "riinr";
  inputs."libp2p-unstable".repo = "flake-nimble";
  inputs."libp2p-unstable".ref = "flake-pinning";
  inputs."libp2p-unstable".dir = "nimpkgs/l/libp2p/unstable";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}