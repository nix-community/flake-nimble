{
  description = ''Scraping tools'';
  inputs.src-scraper-master.flake = false;
  inputs.src-scraper-master.type = "gitlab";
  inputs.src-scraper-master.owner = "lurlo";
  inputs.src-scraper-master.repo = "scraper";
  inputs.src-scraper-master.ref = "refs/heads/master";
  
  
  inputs."https://github.com/thisago/findxml".type = "github";
  inputs."https://github.com/thisago/findxml".owner = "riinr";
  inputs."https://github.com/thisago/findxml".repo = "flake-nimble";
  inputs."https://github.com/thisago/findxml".ref = "flake-pinning";
  inputs."https://github.com/thisago/findxml".dir = "nimpkgs/h/https://github.com/thisago/findxml";

  outputs = { self, nixpkgs, src-scraper-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-scraper-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-scraper-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}