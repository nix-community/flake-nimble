{
  description = ''A miniblink library for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."miniblink-master".type = "github";
  inputs."miniblink-master".owner = "riinr";
  inputs."miniblink-master".repo = "flake-nimble";
  inputs."miniblink-master".ref = "flake-pinning";
  inputs."miniblink-master".dir = "nimpkgs/m/miniblink/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}