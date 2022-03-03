{
  description = ''Central Bank of Argentina Gov API Client with debtor corporations info'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."bcra-master".type = "github";
  inputs."bcra-master".owner = "riinr";
  inputs."bcra-master".repo = "flake-nimble";
  inputs."bcra-master".ref = "flake-pinning";
  inputs."bcra-master".dir = "nimpkgs/b/bcra/master";
  inputs."bcra-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bcra-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}