{
  description = ''Load Windows DLL from memory'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."memlib-master".type = "github";
  inputs."memlib-master".owner = "riinr";
  inputs."memlib-master".repo = "flake-nimble";
  inputs."memlib-master".ref = "flake-pinning";
  inputs."memlib-master".dir = "nimpkgs/m/memlib/master";
  inputs."memlib-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."memlib-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}