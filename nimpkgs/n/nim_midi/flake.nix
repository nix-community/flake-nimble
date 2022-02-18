{
  description = ''Read and write midi files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nim_midi-master".type = "github";
  inputs."nim_midi-master".owner = "riinr";
  inputs."nim_midi-master".repo = "flake-nimble";
  inputs."nim_midi-master".ref = "flake-pinning";
  inputs."nim_midi-master".dir = "nimpkgs/n/nim_midi/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}