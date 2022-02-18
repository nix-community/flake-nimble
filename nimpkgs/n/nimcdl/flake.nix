{
  description = ''Circuit Design language made in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimcdl-master".type = "github";
  inputs."nimcdl-master".owner = "riinr";
  inputs."nimcdl-master".repo = "flake-nimble";
  inputs."nimcdl-master".ref = "flake-pinning";
  inputs."nimcdl-master".dir = "nimpkgs/n/nimcdl/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}