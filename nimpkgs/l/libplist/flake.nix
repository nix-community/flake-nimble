{
  description = ''wrapper around libplist https://github.com/libimobiledevice/libplist'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."libplist-master".type = "github";
  inputs."libplist-master".owner = "riinr";
  inputs."libplist-master".repo = "flake-nimble";
  inputs."libplist-master".ref = "flake-pinning";
  inputs."libplist-master".dir = "nimpkgs/l/libplist/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}