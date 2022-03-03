{
  description = ''Battery widget for command prompt. Written in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."battery_widget-master".type = "github";
  inputs."battery_widget-master".owner = "riinr";
  inputs."battery_widget-master".repo = "flake-nimble";
  inputs."battery_widget-master".ref = "flake-pinning";
  inputs."battery_widget-master".dir = "nimpkgs/b/battery_widget/master";
  inputs."battery_widget-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."battery_widget-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}