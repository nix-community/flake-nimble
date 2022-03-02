{
  description = ''ptrace wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ptrace-master.flake = false;
  inputs.src-ptrace-master.type = "github";
  inputs.src-ptrace-master.owner = "ba0f3";
  inputs.src-ptrace-master.repo = "ptrace.nim";
  inputs.src-ptrace-master.ref = "refs/heads/master";
  inputs.src-ptrace-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ptrace-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ptrace-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ptrace-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}