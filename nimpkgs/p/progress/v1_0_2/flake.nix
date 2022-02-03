{
  description = ''A simple progress bar for Nim.'';
  inputs.src-progress-v1_0_2.flake = false;
  inputs.src-progress-v1_0_2.type = "github";
  inputs.src-progress-v1_0_2.owner = "euantorano";
  inputs.src-progress-v1_0_2.repo = "progress.nim";
  inputs.src-progress-v1_0_2.ref = "refs/tags/v1.0.2";
  
  outputs = { self, nixpkgs, src-progress-v1_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-progress-v1_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-progress-v1_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}