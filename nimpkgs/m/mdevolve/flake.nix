{
  description = ''Integrator framework for Molecular Dynamic evolutions'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."mdevolve-master".type = "github";
  inputs."mdevolve-master".owner = "riinr";
  inputs."mdevolve-master".repo = "flake-nimble";
  inputs."mdevolve-master".ref = "flake-pinning";
  inputs."mdevolve-master".dir = "nimpkgs/m/mdevolve/master";
  inputs."mdevolve-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mdevolve-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mdevolve-v0_1_1".type = "github";
  inputs."mdevolve-v0_1_1".owner = "riinr";
  inputs."mdevolve-v0_1_1".repo = "flake-nimble";
  inputs."mdevolve-v0_1_1".ref = "flake-pinning";
  inputs."mdevolve-v0_1_1".dir = "nimpkgs/m/mdevolve/v0_1_1";
  inputs."mdevolve-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mdevolve-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mdevolve-v1_0_0".type = "github";
  inputs."mdevolve-v1_0_0".owner = "riinr";
  inputs."mdevolve-v1_0_0".repo = "flake-nimble";
  inputs."mdevolve-v1_0_0".ref = "flake-pinning";
  inputs."mdevolve-v1_0_0".dir = "nimpkgs/m/mdevolve/v1_0_0";
  inputs."mdevolve-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mdevolve-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}