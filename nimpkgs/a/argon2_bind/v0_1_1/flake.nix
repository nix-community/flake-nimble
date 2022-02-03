{
  description = ''Bindings to the high-level Argon2 C API'';
  inputs.src-argon2_bind-v0_1_1.flake = false;
  inputs.src-argon2_bind-v0_1_1.type = "github";
  inputs.src-argon2_bind-v0_1_1.owner = "D-Nice";
  inputs.src-argon2_bind-v0_1_1.repo = "argon2_bind";
  inputs.src-argon2_bind-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-argon2_bind-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-argon2_bind-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-argon2_bind-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}