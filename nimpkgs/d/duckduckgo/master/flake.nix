{
  description = ''Duckduckgo search'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-duckduckgo-master.flake = false;
  inputs.src-duckduckgo-master.type = "gitlab";
  inputs.src-duckduckgo-master.owner = "lurlo";
  inputs.src-duckduckgo-master.repo = "duckduckgo";
  inputs.src-duckduckgo-master.ref = "refs/heads/master";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-duckduckgo-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-duckduckgo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-duckduckgo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}