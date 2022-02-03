{
  description = ''A compile-time, compact, fast, without allocation, state-machine generator.'';
  inputs.src-synthesis-v0_2_0.flake = false;
  inputs.src-synthesis-v0_2_0.type = "github";
  inputs.src-synthesis-v0_2_0.owner = "mratsim";
  inputs.src-synthesis-v0_2_0.repo = "Synthesis";
  inputs.src-synthesis-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-synthesis-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-synthesis-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-synthesis-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}