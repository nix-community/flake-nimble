{
  description = ''Transformer'';
  inputs.src-retranslator-0_2_1.flake = false;
  inputs.src-retranslator-0_2_1.type = "github";
  inputs.src-retranslator-0_2_1.owner = "linksplatform";
  inputs.src-retranslator-0_2_1.repo = "RegularExpressions.Transformer";
  inputs.src-retranslator-0_2_1.ref = "refs/tags/0.2.1";
  
  
  inputs."nre".type = "github";
  inputs."nre".owner = "riinr";
  inputs."nre".repo = "flake-nimble";
  inputs."nre".ref = "flake-pinning";
  inputs."nre".dir = "nimpkgs/n/nre";

  outputs = { self, nixpkgs, src-retranslator-0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-retranslator-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-retranslator-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}