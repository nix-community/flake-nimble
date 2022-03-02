{
  description = ''Type-safe commandline parsing with minimal magic'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."therapist-master".type = "github";
  inputs."therapist-master".owner = "riinr";
  inputs."therapist-master".repo = "flake-nimble";
  inputs."therapist-master".ref = "flake-pinning";
  inputs."therapist-master".dir = "nimpkgs/t/therapist/master";
  inputs."therapist-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."therapist-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."therapist-v0_1_0".type = "github";
  inputs."therapist-v0_1_0".owner = "riinr";
  inputs."therapist-v0_1_0".repo = "flake-nimble";
  inputs."therapist-v0_1_0".ref = "flake-pinning";
  inputs."therapist-v0_1_0".dir = "nimpkgs/t/therapist/v0_1_0";
  inputs."therapist-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."therapist-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}