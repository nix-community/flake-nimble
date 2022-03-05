{
  description = ''RSS library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."rss-master".type = "github";
  inputs."rss-master".owner = "riinr";
  inputs."rss-master".repo = "flake-nimble";
  inputs."rss-master".ref = "flake-pinning";
  inputs."rss-master".dir = "nimpkgs/r/rss/master";
  inputs."rss-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rss-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}