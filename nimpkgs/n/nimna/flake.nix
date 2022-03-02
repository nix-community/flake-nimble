{
  description = ''Nucleic acid folding and design.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimna-master".type = "github";
  inputs."nimna-master".owner = "riinr";
  inputs."nimna-master".repo = "flake-nimble";
  inputs."nimna-master".ref = "flake-pinning";
  inputs."nimna-master".dir = "nimpkgs/n/nimna/master";
  inputs."nimna-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimna-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimna-v0_1_0".type = "github";
  inputs."nimna-v0_1_0".owner = "riinr";
  inputs."nimna-v0_1_0".repo = "flake-nimble";
  inputs."nimna-v0_1_0".ref = "flake-pinning";
  inputs."nimna-v0_1_0".dir = "nimpkgs/n/nimna/v0_1_0";
  inputs."nimna-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimna-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}