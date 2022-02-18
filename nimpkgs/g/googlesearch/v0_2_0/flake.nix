{
  description = ''library for scraping google search results'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-googlesearch-v0_2_0.flake = false;
  inputs.src-googlesearch-v0_2_0.type = "github";
  inputs.src-googlesearch-v0_2_0.owner = "xyb";
  inputs.src-googlesearch-v0_2_0.repo = "googlesearch.nim";
  inputs.src-googlesearch-v0_2_0.ref = "refs/tags/v0.2.0";
  
  
  inputs."nimquery".type = "github";
  inputs."nimquery".owner = "riinr";
  inputs."nimquery".repo = "flake-nimble";
  inputs."nimquery".ref = "flake-pinning";
  inputs."nimquery".dir = "nimpkgs/n/nimquery";

  outputs = { self, nixpkgs, flakeNimbleLib, src-googlesearch-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-googlesearch-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-googlesearch-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}