{
  description = ''libssh FFI bindings'';
  inputs.src-libssh-master.flake = false;
  inputs.src-libssh-master.type = "github";
  inputs.src-libssh-master.owner = "dariolah";
  inputs.src-libssh-master.repo = "libssh-nim";
  inputs.src-libssh-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-libssh-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libssh-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libssh-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}