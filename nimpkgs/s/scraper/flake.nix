{
  description = ''Scraping tools'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."scraper-master".type = "github";
  inputs."scraper-master".owner = "riinr";
  inputs."scraper-master".repo = "flake-nimble";
  inputs."scraper-master".ref = "flake-pinning";
  inputs."scraper-master".dir = "nimpkgs/s/scraper/master";
  inputs."scraper-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scraper-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}