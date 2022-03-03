{
  description = ''View and set the metadata for audio files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."meta-master".type = "github";
  inputs."meta-master".owner = "riinr";
  inputs."meta-master".repo = "flake-nimble";
  inputs."meta-master".ref = "flake-pinning";
  inputs."meta-master".dir = "nimpkgs/m/meta/master";
  inputs."meta-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."meta-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}