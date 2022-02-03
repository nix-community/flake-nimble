{
  description = ''Text string translation from free online crowdsourced API. Tinyslation a tiny translation.'';
  inputs.src-translation-v0_1_0.flake = false;
  inputs.src-translation-v0_1_0.type = "github";
  inputs.src-translation-v0_1_0.owner = "juancarlospaco";
  inputs.src-translation-v0_1_0.repo = "nim-tinyslation";
  inputs.src-translation-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-translation-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-translation-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-translation-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}