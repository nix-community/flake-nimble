{
  description = ''Conversion between integers and Roman numerals'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."romans-master".type = "github";
  inputs."romans-master".owner = "riinr";
  inputs."romans-master".repo = "flake-nimble";
  inputs."romans-master".ref = "flake-pinning";
  inputs."romans-master".dir = "nimpkgs/r/romans/master";
  inputs."romans-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."romans-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}