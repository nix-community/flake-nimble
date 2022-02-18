{
  description = ''mofuw is *MO*re *F*aster, *U*ltra *W*ebserver'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."mofuw-master".type = "github";
  inputs."mofuw-master".owner = "riinr";
  inputs."mofuw-master".repo = "flake-nimble";
  inputs."mofuw-master".ref = "flake-pinning";
  inputs."mofuw-master".dir = "nimpkgs/m/mofuw/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}