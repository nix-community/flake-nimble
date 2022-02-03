{
  description = ''libssh FFI bindings'';
  inputs.src-libssh-0_90_0.flake = false;
  inputs.src-libssh-0_90_0.type = "github";
  inputs.src-libssh-0_90_0.owner = "dariolah";
  inputs.src-libssh-0_90_0.repo = "libssh-nim";
  inputs.src-libssh-0_90_0.ref = "refs/tags/0.90.0";
  
  outputs = { self, nixpkgs, src-libssh-0_90_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libssh-0_90_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libssh-0_90_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}