{
  description = ''Nim wrapper for libssh2'';
  inputs.src-libssh2-master.flake = false;
  inputs.src-libssh2-master.type = "github";
  inputs.src-libssh2-master.owner = "ba0f3";
  inputs.src-libssh2-master.repo = "libssh2.nim";
  inputs.src-libssh2-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-libssh2-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libssh2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libssh2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}