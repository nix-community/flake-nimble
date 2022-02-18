{
  description = ''Raw system calls for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-syscall-master.flake = false;
  inputs.src-syscall-master.type = "github";
  inputs.src-syscall-master.owner = "def-";
  inputs.src-syscall-master.repo = "nim-syscall";
  inputs.src-syscall-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-syscall-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-syscall-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-syscall-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}