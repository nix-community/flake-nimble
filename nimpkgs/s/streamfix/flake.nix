{
  description = ''FIX Protocol streaming parser (Financial Information eXchange)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."streamfix-main".type = "github";
  inputs."streamfix-main".owner = "riinr";
  inputs."streamfix-main".repo = "flake-nimble";
  inputs."streamfix-main".ref = "flake-pinning";
  inputs."streamfix-main".dir = "nimpkgs/s/streamfix/main";
  inputs."streamfix-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."streamfix-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}