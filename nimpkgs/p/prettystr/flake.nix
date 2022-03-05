{
  description = ''Small library for working with strings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."prettystr-main".type = "github";
  inputs."prettystr-main".owner = "riinr";
  inputs."prettystr-main".repo = "flake-nimble";
  inputs."prettystr-main".ref = "flake-pinning";
  inputs."prettystr-main".dir = "nimpkgs/p/prettystr/main";
  inputs."prettystr-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prettystr-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}