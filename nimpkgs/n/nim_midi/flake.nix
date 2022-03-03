{
  description = ''Read and write midi files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nim_midi-master".type = "github";
  inputs."nim_midi-master".owner = "riinr";
  inputs."nim_midi-master".repo = "flake-nimble";
  inputs."nim_midi-master".ref = "flake-pinning";
  inputs."nim_midi-master".dir = "nimpkgs/n/nim_midi/master";
  inputs."nim_midi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_midi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}