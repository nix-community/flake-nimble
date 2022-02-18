{
  description = ''ptrace wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ptrace-0_0_3.flake = false;
  inputs.src-ptrace-0_0_3.type = "github";
  inputs.src-ptrace-0_0_3.owner = "ba0f3";
  inputs.src-ptrace-0_0_3.repo = "ptrace.nim";
  inputs.src-ptrace-0_0_3.ref = "refs/tags/0.0.3";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ptrace-0_0_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ptrace-0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ptrace-0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}