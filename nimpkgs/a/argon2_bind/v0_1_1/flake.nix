{
  description = ''Bindings to the high-level Argon2 C API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-argon2_bind-v0_1_1.flake = false;
  inputs.src-argon2_bind-v0_1_1.type = "github";
  inputs.src-argon2_bind-v0_1_1.owner = "D-Nice";
  inputs.src-argon2_bind-v0_1_1.repo = "argon2_bind";
  inputs.src-argon2_bind-v0_1_1.ref = "refs/tags/v0.1.1";
  inputs.src-argon2_bind-v0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-argon2_bind-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-argon2_bind-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-argon2_bind-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}