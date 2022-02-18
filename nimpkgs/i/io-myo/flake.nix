{
  description = ''Obsolete - please use myo instead!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."io-myo-master".type = "github";
  inputs."io-myo-master".owner = "riinr";
  inputs."io-myo-master".repo = "flake-nimble";
  inputs."io-myo-master".ref = "flake-pinning";
  inputs."io-myo-master".dir = "nimpkgs/i/io-myo/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}