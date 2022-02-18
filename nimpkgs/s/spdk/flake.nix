{
  description = ''The Storage Performance Development Kit(SPDK) provides a set of tools and libraries for writing high performance, scalable, user-mode storage applications.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."spdk-master".type = "github";
  inputs."spdk-master".owner = "riinr";
  inputs."spdk-master".repo = "flake-nimble";
  inputs."spdk-master".ref = "flake-pinning";
  inputs."spdk-master".dir = "nimpkgs/s/spdk/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}