{
  description = ''A correctly-rounded arbitrary precision decimal floating point arithmetic library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."decimal-master".type = "github";
  inputs."decimal-master".owner = "riinr";
  inputs."decimal-master".repo = "flake-nimble";
  inputs."decimal-master".ref = "flake-pinning";
  inputs."decimal-master".dir = "nimpkgs/d/decimal/master";
  inputs."decimal-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."decimal-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}