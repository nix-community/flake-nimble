{
  description = ''Text string translation from free online crowdsourced API. Tinyslation a tiny translation.'';
  inputs.src-translation-0_3_1.flake = false;
  inputs.src-translation-0_3_1.type = "github";
  inputs.src-translation-0_3_1.owner = "juancarlospaco";
  inputs.src-translation-0_3_1.repo = "nim-tinyslation";
  inputs.src-translation-0_3_1.ref = "refs/tags/0.3.1";
  
  outputs = { self, nixpkgs, src-translation-0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-translation-0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-translation-0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}