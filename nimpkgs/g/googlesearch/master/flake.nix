{
  description = ''library for scraping google search results'';
  inputs.src-googlesearch-master.flake = false;
  inputs.src-googlesearch-master.type = "github";
  inputs.src-googlesearch-master.owner = "xyb";
  inputs.src-googlesearch-master.repo = "googlesearch.nim";
  inputs.src-googlesearch-master.ref = "refs/heads/master";
  
  
  inputs."nimquery".url = "path:../../../n/nimquery";
  inputs."nimquery".type = "github";
  inputs."nimquery".owner = "riinr";
  inputs."nimquery".repo = "flake-nimble";
  inputs."nimquery".ref = "flake-pinning";
  inputs."nimquery".dir = "nimpkgs/n/nimquery";

  outputs = { self, nixpkgs, src-googlesearch-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-googlesearch-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-googlesearch-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}