{
  description = ''A nim wrapper for the Argon2 hashing library'';
  inputs.src-argon2-v1_0_1.flake = false;
  inputs.src-argon2-v1_0_1.type = "github";
  inputs.src-argon2-v1_0_1.owner = "Ahrotahn";
  inputs.src-argon2-v1_0_1.repo = "argon2";
  inputs.src-argon2-v1_0_1.ref = "refs/tags/v1.0.1";
  
  outputs = { self, nixpkgs, src-argon2-v1_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-argon2-v1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-argon2-v1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}