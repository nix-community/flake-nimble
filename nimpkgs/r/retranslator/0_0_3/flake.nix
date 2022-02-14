{
  description = ''Transformer'';
  inputs.src-retranslator-0_0_3.flake = false;
  inputs.src-retranslator-0_0_3.type = "github";
  inputs.src-retranslator-0_0_3.owner = "linksplatform";
  inputs.src-retranslator-0_0_3.repo = "RegularExpressions.Transformer";
  inputs.src-retranslator-0_0_3.ref = "refs/tags/0.0.3";
  
  outputs = { self, nixpkgs, src-retranslator-0_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-retranslator-0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-retranslator-0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}