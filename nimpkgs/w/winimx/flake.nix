{
  description = ''Winim minified code generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."winimx-master".type = "github";
  inputs."winimx-master".owner = "riinr";
  inputs."winimx-master".repo = "flake-nimble";
  inputs."winimx-master".ref = "flake-pinning";
  inputs."winimx-master".dir = "nimpkgs/w/winimx/master";
  inputs."winimx-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winimx-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}