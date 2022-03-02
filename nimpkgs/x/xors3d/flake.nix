{
  description = ''Blitz3D-esque DX9 engine for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."xors3d-master".type = "github";
  inputs."xors3d-master".owner = "riinr";
  inputs."xors3d-master".repo = "flake-nimble";
  inputs."xors3d-master".ref = "flake-pinning";
  inputs."xors3d-master".dir = "nimpkgs/x/xors3d/master";
  inputs."xors3d-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xors3d-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}