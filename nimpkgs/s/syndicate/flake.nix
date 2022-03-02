{
  description = ''Syndicated actors for conversational concurrency'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
    inputs."syndicate-1_0_0".type = "github";
  inputs."syndicate-1_0_0".owner = "riinr";
  inputs."syndicate-1_0_0".repo = "flake-nimble";
  inputs."syndicate-1_0_0".ref = "flake-pinning";
  inputs."syndicate-1_0_0".dir = "nimpkgs/s/syndicate/1_0_0";
  inputs."syndicate-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syndicate-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."syndicate-1_1_0".type = "github";
  inputs."syndicate-1_1_0".owner = "riinr";
  inputs."syndicate-1_1_0".repo = "flake-nimble";
  inputs."syndicate-1_1_0".ref = "flake-pinning";
  inputs."syndicate-1_1_0".dir = "nimpkgs/s/syndicate/1_1_0";
  inputs."syndicate-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syndicate-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}