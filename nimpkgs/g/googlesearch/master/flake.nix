{
  description = ''library for scraping google search results'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-googlesearch-master.flake = false;
  inputs.src-googlesearch-master.type = "github";
  inputs.src-googlesearch-master.owner = "xyb";
  inputs.src-googlesearch-master.repo = "googlesearch.nim";
  inputs.src-googlesearch-master.ref = "refs/heads/master";
  
  
  inputs."nimquery".type = "github";
  inputs."nimquery".owner = "riinr";
  inputs."nimquery".repo = "flake-nimble";
  inputs."nimquery".ref = "flake-pinning";
  inputs."nimquery".dir = "nimpkgs/n/nimquery";

  outputs = { self, nixpkgs, flakeNimbleLib, src-googlesearch-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-googlesearch-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-googlesearch-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}