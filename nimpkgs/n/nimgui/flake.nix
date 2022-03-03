{
  description = ''bindings to cimgui - https://github.com/cimgui/cimgui'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimgui-master".type = "github";
  inputs."nimgui-master".owner = "riinr";
  inputs."nimgui-master".repo = "flake-nimble";
  inputs."nimgui-master".ref = "flake-pinning";
  inputs."nimgui-master".dir = "nimpkgs/n/nimgui/master";
  inputs."nimgui-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgui-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}