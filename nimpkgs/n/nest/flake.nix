{
  description = ''RESTful URI router'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nest-develop".type = "github";
  inputs."nest-develop".owner = "riinr";
  inputs."nest-develop".repo = "flake-nimble";
  inputs."nest-develop".ref = "flake-pinning";
  inputs."nest-develop".dir = "nimpkgs/n/nest/develop";

    inputs."nest-master".type = "github";
  inputs."nest-master".owner = "riinr";
  inputs."nest-master".repo = "flake-nimble";
  inputs."nest-master".ref = "flake-pinning";
  inputs."nest-master".dir = "nimpkgs/n/nest/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}