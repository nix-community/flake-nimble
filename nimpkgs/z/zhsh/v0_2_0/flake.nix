{
  description = ''This module is a port of the Java implementation of the Zhang-Shasha algorithm for tree edit distance'';
  inputs.src-zhsh-v0_2_0.flake = false;
  inputs.src-zhsh-v0_2_0.type = "github";
  inputs.src-zhsh-v0_2_0.owner = "PMunch";
  inputs.src-zhsh-v0_2_0.repo = "zhangshasha";
  inputs.src-zhsh-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-zhsh-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zhsh-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zhsh-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}