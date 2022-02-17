{
  description = ''Transformer'';
  inputs.src-retranslator-0_3_4.flake = false;
  inputs.src-retranslator-0_3_4.type = "github";
  inputs.src-retranslator-0_3_4.owner = "linksplatform";
  inputs.src-retranslator-0_3_4.repo = "RegularExpressions.Transformer";
  inputs.src-retranslator-0_3_4.ref = "refs/tags/0.3.4";
  
  
  inputs."nre".type = "github";
  inputs."nre".owner = "riinr";
  inputs."nre".repo = "flake-nimble";
  inputs."nre".ref = "flake-pinning";
  inputs."nre".dir = "nimpkgs/n/nre";

  outputs = { self, nixpkgs, src-retranslator-0_3_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-retranslator-0_3_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-retranslator-0_3_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}