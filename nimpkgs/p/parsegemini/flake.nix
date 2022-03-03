{
  description = ''Library for parsing text/gemini'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."parsegemini-master".type = "github";
  inputs."parsegemini-master".owner = "riinr";
  inputs."parsegemini-master".repo = "flake-nimble";
  inputs."parsegemini-master".ref = "flake-pinning";
  inputs."parsegemini-master".dir = "nimpkgs/p/parsegemini/master";
  inputs."parsegemini-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsegemini-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}