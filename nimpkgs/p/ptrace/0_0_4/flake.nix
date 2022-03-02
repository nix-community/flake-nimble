{
  description = ''ptrace wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ptrace-0_0_4.flake = false;
  inputs.src-ptrace-0_0_4.type = "github";
  inputs.src-ptrace-0_0_4.owner = "ba0f3";
  inputs.src-ptrace-0_0_4.repo = "ptrace.nim";
  inputs.src-ptrace-0_0_4.ref = "refs/tags/0.0.4";
  inputs.src-ptrace-0_0_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ptrace-0_0_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ptrace-0_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ptrace-0_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}