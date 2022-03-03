{
  description = ''Scraping tools'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-scraper-master.flake = false;
  inputs.src-scraper-master.type = "gitlab";
  inputs.src-scraper-master.owner = "lurlo";
  inputs.src-scraper-master.repo = "scraper";
  inputs.src-scraper-master.ref = "refs/heads/master";
  inputs.src-scraper-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."https://github.com/thisago/findxml".type = "github";
  # inputs."https://github.com/thisago/findxml".owner = "riinr";
  # inputs."https://github.com/thisago/findxml".repo = "flake-nimble";
  # inputs."https://github.com/thisago/findxml".ref = "flake-pinning";
  # inputs."https://github.com/thisago/findxml".dir = "nimpkgs/h/https://github.com/thisago/findxml";
  # inputs."https://github.com/thisago/findxml".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/thisago/findxml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-scraper-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-scraper-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-scraper-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}