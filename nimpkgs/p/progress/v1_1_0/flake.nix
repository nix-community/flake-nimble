{
  description = ''A simple progress bar for Nim.'';
  inputs.src-progress-v1_1_0.flake = false;
  inputs.src-progress-v1_1_0.type = "github";
  inputs.src-progress-v1_1_0.owner = "euantorano";
  inputs.src-progress-v1_1_0.repo = "progress.nim";
  inputs.src-progress-v1_1_0.ref = "refs/tags/v1.1.0";
  
  outputs = { self, nixpkgs, src-progress-v1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-progress-v1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-progress-v1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}