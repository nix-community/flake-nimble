{
  description = ''ptrace wrapper for Nim'';
  inputs.src-ptrace-0_0_4.flake = false;
  inputs.src-ptrace-0_0_4.type = "github";
  inputs.src-ptrace-0_0_4.owner = "ba0f3";
  inputs.src-ptrace-0_0_4.repo = "ptrace.nim";
  inputs.src-ptrace-0_0_4.ref = "refs/tags/0.0.4";
  
  outputs = { self, nixpkgs, src-ptrace-0_0_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ptrace-0_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ptrace-0_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}