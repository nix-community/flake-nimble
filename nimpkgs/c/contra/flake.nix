{
  description = ''Lightweight Contract Programming, Design by Contract, on 9 LoC, NimScript, JavaScript, compile-time.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."contra-master".type = "github";
  inputs."contra-master".owner = "riinr";
  inputs."contra-master".repo = "flake-nimble";
  inputs."contra-master".ref = "flake-pinning";
  inputs."contra-master".dir = "nimpkgs/c/contra/master";
  inputs."contra-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contra-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}