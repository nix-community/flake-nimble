{
  description = ''Brainly data extractor'';
  inputs.src-brainlyextractor-master.flake = false;
  inputs.src-brainlyextractor-master.type = "gitlab";
  inputs.src-brainlyextractor-master.owner = "lurlo";
  inputs.src-brainlyextractor-master.repo = "brainlyextractor";
  inputs.src-brainlyextractor-master.ref = "refs/heads/master";
  
  
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

  outputs = { self, nixpkgs, src-brainlyextractor-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-brainlyextractor-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-brainlyextractor-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}