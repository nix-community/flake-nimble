{
  description = ''A Nim mini DSL to execute shell commands'';
  inputs.src-shell-v0_2_2.flake = false;
  inputs.src-shell-v0_2_2.type = "github";
  inputs.src-shell-v0_2_2.owner = "Vindaar";
  inputs.src-shell-v0_2_2.repo = "shell";
  inputs.src-shell-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, src-shell-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shell-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-shell-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}