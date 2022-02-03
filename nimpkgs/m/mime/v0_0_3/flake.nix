{
  description = ''Library for attaching files to emails.'';
  inputs.src-mime-v0_0_3.flake = false;
  inputs.src-mime-v0_0_3.type = "github";
  inputs.src-mime-v0_0_3.owner = "enthus1ast";
  inputs.src-mime-v0_0_3.repo = "nimMime";
  inputs.src-mime-v0_0_3.ref = "refs/tags/v0.0.3";
  
  outputs = { self, nixpkgs, src-mime-v0_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mime-v0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mime-v0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}