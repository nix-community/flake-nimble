{
  description = ''Fuzzy search wrapper for Nim'';
  inputs.src-nimfuzzy-master.flake = false;
  inputs.src-nimfuzzy-master.type = "github";
  inputs.src-nimfuzzy-master.owner = "genotrance";
  inputs.src-nimfuzzy-master.repo = "nimfuzzy";
  inputs.src-nimfuzzy-master.ref = "refs/heads/master";
  
  
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";

  outputs = { self, nixpkgs, src-nimfuzzy-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfuzzy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimfuzzy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}