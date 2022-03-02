{
  description = ''A nimterop wrapper for the dav1d portable-and-fast AV1 video decoder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."dav1d-master".type = "github";
  inputs."dav1d-master".owner = "riinr";
  inputs."dav1d-master".repo = "flake-nimble";
  inputs."dav1d-master".ref = "flake-pinning";
  inputs."dav1d-master".dir = "nimpkgs/d/dav1d/master";
  inputs."dav1d-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dav1d-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}