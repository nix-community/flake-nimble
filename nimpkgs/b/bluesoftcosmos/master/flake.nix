{
  description = ''Bluesoft Cosmos extractor'';
  inputs.src-bluesoftcosmos-master.flake = false;
  inputs.src-bluesoftcosmos-master.type = "gitlab";
  inputs.src-bluesoftcosmos-master.owner = "lurlo";
  inputs.src-bluesoftcosmos-master.repo = "bluesoftcosmos";
  inputs.src-bluesoftcosmos-master.ref = "refs/heads/master";
  
  
  inputs."scraper".type = "github";
  inputs."scraper".owner = "riinr";
  inputs."scraper".repo = "flake-nimble";
  inputs."scraper".ref = "flake-pinning";
  inputs."scraper".dir = "nimpkgs/s/scraper";

  
  inputs."https://gitlab.com/lurlo/useragent".type = "github";
  inputs."https://gitlab.com/lurlo/useragent".owner = "riinr";
  inputs."https://gitlab.com/lurlo/useragent".repo = "flake-nimble";
  inputs."https://gitlab.com/lurlo/useragent".ref = "flake-pinning";
  inputs."https://gitlab.com/lurlo/useragent".dir = "nimpkgs/h/https://gitlab.com/lurlo/useragent";

  outputs = { self, nixpkgs, src-bluesoftcosmos-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bluesoftcosmos-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bluesoftcosmos-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}