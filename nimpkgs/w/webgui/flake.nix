{
  description = ''Web Technologies based Crossplatform GUI, modified wrapper for modified webview.h'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."webgui-master".type = "github";
  inputs."webgui-master".owner = "riinr";
  inputs."webgui-master".repo = "flake-nimble";
  inputs."webgui-master".ref = "flake-pinning";
  inputs."webgui-master".dir = "nimpkgs/w/webgui/master";
  inputs."webgui-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webgui-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."webgui-0_2_0".type = "github";
  inputs."webgui-0_2_0".owner = "riinr";
  inputs."webgui-0_2_0".repo = "flake-nimble";
  inputs."webgui-0_2_0".ref = "flake-pinning";
  inputs."webgui-0_2_0".dir = "nimpkgs/w/webgui/0_2_0";
  inputs."webgui-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webgui-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."webgui-0_4_0".type = "github";
  inputs."webgui-0_4_0".owner = "riinr";
  inputs."webgui-0_4_0".repo = "flake-nimble";
  inputs."webgui-0_4_0".ref = "flake-pinning";
  inputs."webgui-0_4_0".dir = "nimpkgs/w/webgui/0_4_0";
  inputs."webgui-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webgui-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."webgui-0_5_0".type = "github";
  inputs."webgui-0_5_0".owner = "riinr";
  inputs."webgui-0_5_0".repo = "flake-nimble";
  inputs."webgui-0_5_0".ref = "flake-pinning";
  inputs."webgui-0_5_0".dir = "nimpkgs/w/webgui/0_5_0";
  inputs."webgui-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webgui-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."webgui-0_6_0".type = "github";
  inputs."webgui-0_6_0".owner = "riinr";
  inputs."webgui-0_6_0".repo = "flake-nimble";
  inputs."webgui-0_6_0".ref = "flake-pinning";
  inputs."webgui-0_6_0".dir = "nimpkgs/w/webgui/0_6_0";
  inputs."webgui-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webgui-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."webgui-0_8_0".type = "github";
  inputs."webgui-0_8_0".owner = "riinr";
  inputs."webgui-0_8_0".repo = "flake-nimble";
  inputs."webgui-0_8_0".ref = "flake-pinning";
  inputs."webgui-0_8_0".dir = "nimpkgs/w/webgui/0_8_0";
  inputs."webgui-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webgui-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."webgui-0_9_0".type = "github";
  inputs."webgui-0_9_0".owner = "riinr";
  inputs."webgui-0_9_0".repo = "flake-nimble";
  inputs."webgui-0_9_0".ref = "flake-pinning";
  inputs."webgui-0_9_0".dir = "nimpkgs/w/webgui/0_9_0";
  inputs."webgui-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webgui-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}