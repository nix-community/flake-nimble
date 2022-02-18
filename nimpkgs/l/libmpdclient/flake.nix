{
  description = ''Bindings for the Music Player Daemon C client library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."libmpdclient-master".type = "github";
  inputs."libmpdclient-master".owner = "riinr";
  inputs."libmpdclient-master".repo = "flake-nimble";
  inputs."libmpdclient-master".ref = "flake-pinning";
  inputs."libmpdclient-master".dir = "nimpkgs/l/libmpdclient/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}