{
  description = ''Blitz3D-esque DX9 engine for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."Xors3D-master".type = "github";
  inputs."Xors3D-master".owner = "riinr";
  inputs."Xors3D-master".repo = "flake-nimble";
  inputs."Xors3D-master".ref = "flake-pinning";
  inputs."Xors3D-master".dir = "nimpkgs/x/Xors3D/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}