{
  description = ''Keyboard typing emulator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."autotyper-master".type = "github";
  inputs."autotyper-master".owner = "riinr";
  inputs."autotyper-master".repo = "flake-nimble";
  inputs."autotyper-master".ref = "flake-pinning";
  inputs."autotyper-master".dir = "nimpkgs/a/autotyper/master";
  inputs."autotyper-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."autotyper-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."autotyper-v0_2_0".type = "github";
  inputs."autotyper-v0_2_0".owner = "riinr";
  inputs."autotyper-v0_2_0".repo = "flake-nimble";
  inputs."autotyper-v0_2_0".ref = "flake-pinning";
  inputs."autotyper-v0_2_0".dir = "nimpkgs/a/autotyper/v0_2_0";
  inputs."autotyper-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."autotyper-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}