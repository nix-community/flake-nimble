{
  description = ''libsodium wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-libsodium-master.flake = false;
  inputs.src-libsodium-master.type = "github";
  inputs.src-libsodium-master.owner = "FedericoCeratto";
  inputs.src-libsodium-master.repo = "nim-libsodium";
  inputs.src-libsodium-master.ref = "refs/heads/master";
  inputs.src-libsodium-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libsodium-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libsodium-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libsodium-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}