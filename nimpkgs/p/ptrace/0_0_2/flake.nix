{
  description = ''ptrace wrapper for Nim'';
  inputs.src-ptrace-0_0_2.flake = false;
  inputs.src-ptrace-0_0_2.type = "github";
  inputs.src-ptrace-0_0_2.owner = "ba0f3";
  inputs.src-ptrace-0_0_2.repo = "ptrace.nim";
  inputs.src-ptrace-0_0_2.ref = "refs/tags/0.0.2";
  
  outputs = { self, nixpkgs, src-ptrace-0_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ptrace-0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ptrace-0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}