{
  description = ''Simple async Gemini server'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."geminim-master".type = "github";
  inputs."geminim-master".owner = "riinr";
  inputs."geminim-master".repo = "flake-nimble";
  inputs."geminim-master".ref = "flake-pinning";
  inputs."geminim-master".dir = "nimpkgs/g/geminim/master";
  inputs."geminim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."geminim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}