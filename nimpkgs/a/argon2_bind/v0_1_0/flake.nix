{
  description = ''Bindings to the high-level Argon2 C API'';
  inputs.src-argon2_bind-v0_1_0.flake = false;
  inputs.src-argon2_bind-v0_1_0.type = "github";
  inputs.src-argon2_bind-v0_1_0.owner = "D-Nice";
  inputs.src-argon2_bind-v0_1_0.repo = "argon2_bind";
  inputs.src-argon2_bind-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-argon2_bind-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-argon2_bind-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-argon2_bind-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}