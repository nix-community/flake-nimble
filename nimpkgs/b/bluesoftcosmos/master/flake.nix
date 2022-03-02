{
  description = ''Bluesoft Cosmos extractor'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-bluesoftcosmos-master.flake = false;
  inputs.src-bluesoftcosmos-master.type = "gitlab";
  inputs.src-bluesoftcosmos-master.owner = "lurlo";
  inputs.src-bluesoftcosmos-master.repo = "bluesoftcosmos";
  inputs.src-bluesoftcosmos-master.ref = "refs/heads/master";
  inputs.src-bluesoftcosmos-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."scraper".type = "github";
  # inputs."scraper".owner = "riinr";
  # inputs."scraper".repo = "flake-nimble";
  # inputs."scraper".ref = "flake-pinning";
  # inputs."scraper".dir = "nimpkgs/s/scraper";
  # inputs."scraper".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."scraper".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://gitlab.com/lurlo/useragent".type = "github";
  # inputs."https://gitlab.com/lurlo/useragent".owner = "riinr";
  # inputs."https://gitlab.com/lurlo/useragent".repo = "flake-nimble";
  # inputs."https://gitlab.com/lurlo/useragent".ref = "flake-pinning";
  # inputs."https://gitlab.com/lurlo/useragent".dir = "nimpkgs/h/https://gitlab.com/lurlo/useragent";
  # inputs."https://gitlab.com/lurlo/useragent".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://gitlab.com/lurlo/useragent".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-bluesoftcosmos-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bluesoftcosmos-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bluesoftcosmos-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}