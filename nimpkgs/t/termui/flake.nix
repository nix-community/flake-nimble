{
  description = ''Simple UI components for the terminal.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."termui-master".type = "github";
  inputs."termui-master".owner = "riinr";
  inputs."termui-master".repo = "flake-nimble";
  inputs."termui-master".ref = "flake-pinning";
  inputs."termui-master".dir = "nimpkgs/t/termui/master";
  inputs."termui-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."termui-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}