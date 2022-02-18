{
  description = ''Updated version of tor.nim from https://github.com/FedericoCeratto/nim-tor'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."torim-master".type = "github";
  inputs."torim-master".owner = "riinr";
  inputs."torim-master".repo = "flake-nimble";
  inputs."torim-master".ref = "flake-pinning";
  inputs."torim-master".dir = "nimpkgs/t/torim/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}