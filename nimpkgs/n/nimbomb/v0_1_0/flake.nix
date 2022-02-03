{
  description = ''A GiantBomb-wiki wrapper for nim'';
  inputs.src-nimbomb-v0_1_0.flake = false;
  inputs.src-nimbomb-v0_1_0.type = "github";
  inputs.src-nimbomb-v0_1_0.owner = "Tyler-Yocolano";
  inputs.src-nimbomb-v0_1_0.repo = "nimbomb";
  inputs.src-nimbomb-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-nimbomb-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbomb-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimbomb-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}