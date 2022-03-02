{
  description = ''Nim wrapper for distorm3 - Powerful Disassembler Library For x86/AMD64'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."distorm3-master".type = "github";
  inputs."distorm3-master".owner = "riinr";
  inputs."distorm3-master".repo = "flake-nimble";
  inputs."distorm3-master".ref = "flake-pinning";
  inputs."distorm3-master".dir = "nimpkgs/d/distorm3/master";
  inputs."distorm3-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."distorm3-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."distorm3-3_5_2".type = "github";
  inputs."distorm3-3_5_2".owner = "riinr";
  inputs."distorm3-3_5_2".repo = "flake-nimble";
  inputs."distorm3-3_5_2".ref = "flake-pinning";
  inputs."distorm3-3_5_2".dir = "nimpkgs/d/distorm3/3_5_2";
  inputs."distorm3-3_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."distorm3-3_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}