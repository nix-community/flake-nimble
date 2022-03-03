{
  description = ''A library that implements the note.txt specification for note taking.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."notetxt-master".type = "github";
  inputs."notetxt-master".owner = "riinr";
  inputs."notetxt-master".repo = "flake-nimble";
  inputs."notetxt-master".ref = "flake-pinning";
  inputs."notetxt-master".dir = "nimpkgs/n/notetxt/master";
  inputs."notetxt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notetxt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}