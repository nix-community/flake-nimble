{
  description = ''libuv bindings for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."libuv-master".type = "github";
  inputs."libuv-master".owner = "riinr";
  inputs."libuv-master".repo = "flake-nimble";
  inputs."libuv-master".ref = "flake-pinning";
  inputs."libuv-master".dir = "nimpkgs/l/libuv/master";
  inputs."libuv-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libuv-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}