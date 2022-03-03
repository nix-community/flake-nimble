{
  description = ''Define enums which values preserve their binary representation upon inserting or reordering'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."persistent_enums-master".type = "github";
  inputs."persistent_enums-master".owner = "riinr";
  inputs."persistent_enums-master".repo = "flake-nimble";
  inputs."persistent_enums-master".ref = "flake-pinning";
  inputs."persistent_enums-master".dir = "nimpkgs/p/persistent_enums/master";
  inputs."persistent_enums-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."persistent_enums-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}