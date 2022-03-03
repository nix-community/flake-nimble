{
  description = ''REXPaint .xp parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."rexpaint-master".type = "github";
  inputs."rexpaint-master".owner = "riinr";
  inputs."rexpaint-master".repo = "flake-nimble";
  inputs."rexpaint-master".ref = "flake-pinning";
  inputs."rexpaint-master".dir = "nimpkgs/r/rexpaint/master";
  inputs."rexpaint-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rexpaint-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}