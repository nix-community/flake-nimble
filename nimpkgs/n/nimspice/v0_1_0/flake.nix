{
  description = ''A bunch of macros. sugar if you would'';
  inputs.src-nimspice-v0_1_0.flake = false;
  inputs.src-nimspice-v0_1_0.type = "github";
  inputs.src-nimspice-v0_1_0.owner = "CodeDoes";
  inputs.src-nimspice-v0_1_0.repo = "nimspice";
  inputs.src-nimspice-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-nimspice-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimspice-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimspice-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}