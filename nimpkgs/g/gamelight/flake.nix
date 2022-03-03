{
  description = ''A set of simple modules for writing a JavaScript 2D game.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."gamelight-master".type = "github";
  inputs."gamelight-master".owner = "riinr";
  inputs."gamelight-master".repo = "flake-nimble";
  inputs."gamelight-master".ref = "flake-pinning";
  inputs."gamelight-master".dir = "nimpkgs/g/gamelight/master";
  inputs."gamelight-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gamelight-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}