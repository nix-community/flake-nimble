{
  description = ''A nim wrapper for the Argon2 hashing library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-argon2-master.flake = false;
  inputs.src-argon2-master.type = "github";
  inputs.src-argon2-master.owner = "Ahrotahn";
  inputs.src-argon2-master.repo = "argon2";
  inputs.src-argon2-master.ref = "refs/heads/master";
  inputs.src-argon2-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-argon2-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-argon2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-argon2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}