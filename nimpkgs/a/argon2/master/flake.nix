{
  description = ''A nim wrapper for the Argon2 hashing library'';
  inputs.src-argon2-master.flake = false;
  inputs.src-argon2-master.type = "github";
  inputs.src-argon2-master.owner = "Ahrotahn";
  inputs.src-argon2-master.repo = "argon2";
  inputs.src-argon2-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-argon2-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-argon2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-argon2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}