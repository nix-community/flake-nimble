{
  description = ''Nim wrapper for libssh2'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."libssh2-master".type = "github";
  inputs."libssh2-master".owner = "riinr";
  inputs."libssh2-master".repo = "flake-nimble";
  inputs."libssh2-master".ref = "flake-pinning";
  inputs."libssh2-master".dir = "nimpkgs/l/libssh2/master";
  inputs."libssh2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libssh2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}