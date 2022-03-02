{
  description = ''A nim wrapper for Wren, an embedded scripting language'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."wren-master".type = "github";
  inputs."wren-master".owner = "riinr";
  inputs."wren-master".repo = "flake-nimble";
  inputs."wren-master".ref = "flake-pinning";
  inputs."wren-master".dir = "nimpkgs/w/wren/master";
  inputs."wren-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wren-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}