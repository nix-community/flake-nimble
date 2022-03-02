{
  description = ''c2nim is a tool to translate Ansi C code to Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."c2nim-master".type = "github";
  inputs."c2nim-master".owner = "riinr";
  inputs."c2nim-master".repo = "flake-nimble";
  inputs."c2nim-master".ref = "flake-pinning";
  inputs."c2nim-master".dir = "nimpkgs/c/c2nim/master";
  inputs."c2nim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."c2nim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."c2nim-0_9_15".type = "github";
  inputs."c2nim-0_9_15".owner = "riinr";
  inputs."c2nim-0_9_15".repo = "flake-nimble";
  inputs."c2nim-0_9_15".ref = "flake-pinning";
  inputs."c2nim-0_9_15".dir = "nimpkgs/c/c2nim/0_9_15";
  inputs."c2nim-0_9_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."c2nim-0_9_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."c2nim-0_9_16".type = "github";
  inputs."c2nim-0_9_16".owner = "riinr";
  inputs."c2nim-0_9_16".repo = "flake-nimble";
  inputs."c2nim-0_9_16".ref = "flake-pinning";
  inputs."c2nim-0_9_16".dir = "nimpkgs/c/c2nim/0_9_16";
  inputs."c2nim-0_9_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."c2nim-0_9_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."c2nim-0_9_17".type = "github";
  inputs."c2nim-0_9_17".owner = "riinr";
  inputs."c2nim-0_9_17".repo = "flake-nimble";
  inputs."c2nim-0_9_17".ref = "flake-pinning";
  inputs."c2nim-0_9_17".dir = "nimpkgs/c/c2nim/0_9_17";
  inputs."c2nim-0_9_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."c2nim-0_9_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."c2nim-0_9_18".type = "github";
  inputs."c2nim-0_9_18".owner = "riinr";
  inputs."c2nim-0_9_18".repo = "flake-nimble";
  inputs."c2nim-0_9_18".ref = "flake-pinning";
  inputs."c2nim-0_9_18".dir = "nimpkgs/c/c2nim/0_9_18";
  inputs."c2nim-0_9_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."c2nim-0_9_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}