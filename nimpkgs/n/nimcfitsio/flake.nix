{
  description = ''Bindings for CFITSIO, a library to read/write FITSIO images and tables.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimcfitsio-master".type = "github";
  inputs."nimcfitsio-master".owner = "riinr";
  inputs."nimcfitsio-master".repo = "flake-nimble";
  inputs."nimcfitsio-master".ref = "flake-pinning";
  inputs."nimcfitsio-master".dir = "nimpkgs/n/nimcfitsio/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}