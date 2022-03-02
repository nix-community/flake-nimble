{
  description = ''Obsolete - please use isense instead!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."io-isense-master".type = "github";
  inputs."io-isense-master".owner = "riinr";
  inputs."io-isense-master".repo = "flake-nimble";
  inputs."io-isense-master".ref = "flake-pinning";
  inputs."io-isense-master".dir = "nimpkgs/i/io-isense/master";
  inputs."io-isense-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."io-isense-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}