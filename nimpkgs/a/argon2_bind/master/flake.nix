{
  description = ''Bindings to the high-level Argon2 C API'';
  inputs.src-argon2_bind-master.flake = false;
  inputs.src-argon2_bind-master.type = "github";
  inputs.src-argon2_bind-master.owner = "D-Nice";
  inputs.src-argon2_bind-master.repo = "argon2_bind";
  inputs.src-argon2_bind-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-argon2_bind-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-argon2_bind-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-argon2_bind-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}