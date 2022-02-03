{
  description = ''A simple progress bar for Nim.'';
  inputs.src-progress-v1_1_3.flake = false;
  inputs.src-progress-v1_1_3.type = "github";
  inputs.src-progress-v1_1_3.owner = "euantorano";
  inputs.src-progress-v1_1_3.repo = "progress.nim";
  inputs.src-progress-v1_1_3.ref = "refs/tags/v1.1.3";
  
  outputs = { self, nixpkgs, src-progress-v1_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-progress-v1_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-progress-v1_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}