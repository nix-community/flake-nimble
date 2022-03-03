{
  description = ''mofuw is *MO*re *F*aster, *U*ltra *W*ebserver'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."mofuw-master".type = "github";
  inputs."mofuw-master".owner = "riinr";
  inputs."mofuw-master".repo = "flake-nimble";
  inputs."mofuw-master".ref = "flake-pinning";
  inputs."mofuw-master".dir = "nimpkgs/m/mofuw/master";
  inputs."mofuw-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mofuw-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}