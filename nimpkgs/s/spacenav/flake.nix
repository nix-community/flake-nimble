{
  description = ''Bindings for libspnav, the free 3Dconnexion device driver'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."spacenav-master".type = "github";
  inputs."spacenav-master".owner = "riinr";
  inputs."spacenav-master".repo = "flake-nimble";
  inputs."spacenav-master".ref = "flake-pinning";
  inputs."spacenav-master".dir = "nimpkgs/s/spacenav/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}