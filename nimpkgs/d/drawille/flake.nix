{
  description = ''Drawing in terminal with Unicode Braille characters.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."drawille-master".type = "github";
  inputs."drawille-master".owner = "riinr";
  inputs."drawille-master".repo = "flake-nimble";
  inputs."drawille-master".ref = "flake-pinning";
  inputs."drawille-master".dir = "nimpkgs/d/drawille/master";
  inputs."drawille-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drawille-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}