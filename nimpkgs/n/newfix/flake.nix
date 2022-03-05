{
  description = ''FIX Protocol optimized parser (Financial Information eXchange)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."newfix-master".type = "github";
  inputs."newfix-master".owner = "riinr";
  inputs."newfix-master".repo = "flake-nimble";
  inputs."newfix-master".ref = "flake-pinning";
  inputs."newfix-master".dir = "nimpkgs/n/newfix/master";
  inputs."newfix-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."newfix-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}