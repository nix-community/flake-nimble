{
  description = ''A bunch of macros. sugar if you would'';
  inputs.src-nimspice-v0_1_2.flake = false;
  inputs.src-nimspice-v0_1_2.type = "github";
  inputs.src-nimspice-v0_1_2.owner = "CodeDoes";
  inputs.src-nimspice-v0_1_2.repo = "nimspice";
  inputs.src-nimspice-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-nimspice-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimspice-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimspice-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}