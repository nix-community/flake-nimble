{
  description = ''Updated version of tor.nim from https://github.com/FedericoCeratto/nim-tor'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."torim-master".type = "github";
  inputs."torim-master".owner = "riinr";
  inputs."torim-master".repo = "flake-nimble";
  inputs."torim-master".ref = "flake-pinning";
  inputs."torim-master".dir = "nimpkgs/t/torim/master";
  inputs."torim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}