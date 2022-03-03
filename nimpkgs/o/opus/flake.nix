{
  description = ''A nimterop wrapper for the opus audio decoder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."opus-master".type = "github";
  inputs."opus-master".owner = "riinr";
  inputs."opus-master".repo = "flake-nimble";
  inputs."opus-master".ref = "flake-pinning";
  inputs."opus-master".dir = "nimpkgs/o/opus/master";
  inputs."opus-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opus-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}