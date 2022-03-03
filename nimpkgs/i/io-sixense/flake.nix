{
  description = ''Obsolete - please use sixense instead!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."io-sixense-master".type = "github";
  inputs."io-sixense-master".owner = "riinr";
  inputs."io-sixense-master".repo = "flake-nimble";
  inputs."io-sixense-master".ref = "flake-pinning";
  inputs."io-sixense-master".dir = "nimpkgs/i/io-sixense/master";
  inputs."io-sixense-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."io-sixense-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}