{
  description = ''Transformer'';
  inputs.src-retranslator-0_3_3.flake = false;
  inputs.src-retranslator-0_3_3.type = "github";
  inputs.src-retranslator-0_3_3.owner = "linksplatform";
  inputs.src-retranslator-0_3_3.repo = "RegularExpressions.Transformer";
  inputs.src-retranslator-0_3_3.ref = "refs/tags/0.3.3";
  
  
  inputs."nre".url = "path:../../../n/nre";
  inputs."nre".type = "github";
  inputs."nre".owner = "riinr";
  inputs."nre".repo = "flake-nimble";
  inputs."nre".ref = "flake-pinning";
  inputs."nre".dir = "nimpkgs/n/nre";

  outputs = { self, nixpkgs, src-retranslator-0_3_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-retranslator-0_3_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-retranslator-0_3_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}