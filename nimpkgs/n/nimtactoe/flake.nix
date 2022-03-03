{
  description = ''A new awesome nimble package'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimtactoe-master".type = "github";
  inputs."nimtactoe-master".owner = "riinr";
  inputs."nimtactoe-master".repo = "flake-nimble";
  inputs."nimtactoe-master".ref = "flake-pinning";
  inputs."nimtactoe-master".dir = "nimpkgs/n/nimtactoe/master";
  inputs."nimtactoe-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtactoe-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}