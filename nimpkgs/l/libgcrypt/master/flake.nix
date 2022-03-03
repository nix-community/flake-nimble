{
  description = ''libgcrypt wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-libgcrypt-master.flake = false;
  inputs.src-libgcrypt-master.type = "github";
  inputs.src-libgcrypt-master.owner = "FedericoCeratto";
  inputs.src-libgcrypt-master.repo = "nim-libgcrypt";
  inputs.src-libgcrypt-master.ref = "refs/heads/master";
  inputs.src-libgcrypt-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libgcrypt-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libgcrypt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libgcrypt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}