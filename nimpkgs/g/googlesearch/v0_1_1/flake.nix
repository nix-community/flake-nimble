{
  description = ''library for scraping google search results'';
  inputs.src-googlesearch-v0_1_1.flake = false;
  inputs.src-googlesearch-v0_1_1.type = "github";
  inputs.src-googlesearch-v0_1_1.owner = "xyb";
  inputs.src-googlesearch-v0_1_1.repo = "googlesearch.nim";
  inputs.src-googlesearch-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."nimquery".type = "github";
  inputs."nimquery".owner = "riinr";
  inputs."nimquery".repo = "flake-nimble";
  inputs."nimquery".ref = "flake-pinning";
  inputs."nimquery".dir = "nimpkgs/n/nimquery";

  outputs = { self, nixpkgs, src-googlesearch-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-googlesearch-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-googlesearch-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}