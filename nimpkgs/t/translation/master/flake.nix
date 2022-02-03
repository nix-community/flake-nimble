{
  description = ''Text string translation from free online crowdsourced API. Tinyslation a tiny translation.'';
  inputs.src-translation-master.flake = false;
  inputs.src-translation-master.type = "github";
  inputs.src-translation-master.owner = "juancarlospaco";
  inputs.src-translation-master.repo = "nim-tinyslation";
  inputs.src-translation-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-translation-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-translation-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-translation-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}