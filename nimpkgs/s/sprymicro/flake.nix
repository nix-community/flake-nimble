{
  description = ''Small demo Spry interpreters'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sprymicro-master".type = "github";
  inputs."sprymicro-master".owner = "riinr";
  inputs."sprymicro-master".repo = "flake-nimble";
  inputs."sprymicro-master".ref = "flake-pinning";
  inputs."sprymicro-master".dir = "nimpkgs/s/sprymicro/master";
  inputs."sprymicro-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sprymicro-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}