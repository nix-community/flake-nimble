{
  description = ''Nim wrapper for (and with) Celtoys's Remotery'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."remotery-master".type = "github";
  inputs."remotery-master".owner = "riinr";
  inputs."remotery-master".repo = "flake-nimble";
  inputs."remotery-master".ref = "flake-pinning";
  inputs."remotery-master".dir = "nimpkgs/r/remotery/master";
  inputs."remotery-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."remotery-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}