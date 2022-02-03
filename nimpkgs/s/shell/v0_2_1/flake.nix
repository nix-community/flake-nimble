{
  description = ''A Nim mini DSL to execute shell commands'';
  inputs.src-shell-v0_2_1.flake = false;
  inputs.src-shell-v0_2_1.type = "github";
  inputs.src-shell-v0_2_1.owner = "Vindaar";
  inputs.src-shell-v0_2_1.repo = "shell";
  inputs.src-shell-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-shell-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shell-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-shell-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}