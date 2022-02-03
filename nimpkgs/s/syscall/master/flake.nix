{
  description = ''Raw system calls for Nim'';
  inputs.src-syscall-master.flake = false;
  inputs.src-syscall-master.type = "github";
  inputs.src-syscall-master.owner = "def-";
  inputs.src-syscall-master.repo = "nim-syscall";
  inputs.src-syscall-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-syscall-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-syscall-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-syscall-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}