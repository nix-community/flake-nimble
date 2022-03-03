{
  description = ''Protocol Buffers compiler support package for nimpb'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimpb_protoc-master".type = "github";
  inputs."nimpb_protoc-master".owner = "riinr";
  inputs."nimpb_protoc-master".repo = "flake-nimble";
  inputs."nimpb_protoc-master".ref = "flake-pinning";
  inputs."nimpb_protoc-master".dir = "nimpkgs/n/nimpb_protoc/master";
  inputs."nimpb_protoc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpb_protoc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}