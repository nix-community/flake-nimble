{
  description = ''A MessagePack binding for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."msgpack-master".type = "github";
  inputs."msgpack-master".owner = "riinr";
  inputs."msgpack-master".repo = "flake-nimble";
  inputs."msgpack-master".ref = "flake-pinning";
  inputs."msgpack-master".dir = "nimpkgs/m/msgpack/master";
  inputs."msgpack-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."msgpack-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}