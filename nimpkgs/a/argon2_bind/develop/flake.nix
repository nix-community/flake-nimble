{
  description = ''Bindings to the high-level Argon2 C API'';
  inputs.src-argon2_bind-develop.flake = false;
  inputs.src-argon2_bind-develop.type = "github";
  inputs.src-argon2_bind-develop.owner = "D-Nice";
  inputs.src-argon2_bind-develop.repo = "argon2_bind";
  inputs.src-argon2_bind-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, src-argon2_bind-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-argon2_bind-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-argon2_bind-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}