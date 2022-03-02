{
  description = ''Bindings to the high-level Argon2 C API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-argon2_bind-master.flake = false;
  inputs.src-argon2_bind-master.type = "github";
  inputs.src-argon2_bind-master.owner = "D-Nice";
  inputs.src-argon2_bind-master.repo = "argon2_bind";
  inputs.src-argon2_bind-master.ref = "refs/heads/master";
  inputs.src-argon2_bind-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-argon2_bind-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-argon2_bind-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-argon2_bind-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}