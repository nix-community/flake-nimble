{
  description = ''Simple and compact fuzzing'';
  inputs.src-nimfuzz-v1_0_0.flake = false;
  inputs.src-nimfuzz-v1_0_0.type = "github";
  inputs.src-nimfuzz-v1_0_0.owner = "apense";
  inputs.src-nimfuzz-v1_0_0.repo = "nimfuzz";
  inputs.src-nimfuzz-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, src-nimfuzz-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfuzz-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimfuzz-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}