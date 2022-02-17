{
  description = ''Bindings to the high-level Argon2 C API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-argon2_bind-develop.flake = false;
  inputs.src-argon2_bind-develop.type = "github";
  inputs.src-argon2_bind-develop.owner = "D-Nice";
  inputs.src-argon2_bind-develop.repo = "argon2_bind";
  inputs.src-argon2_bind-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-argon2_bind-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-argon2_bind-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-argon2_bind-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}