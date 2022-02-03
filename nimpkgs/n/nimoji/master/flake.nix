{
  description = ''🍕🍺 emoji support for Nim 👑 and the world 🌍'';
  inputs.src-nimoji-master.flake = false;
  inputs.src-nimoji-master.type = "github";
  inputs.src-nimoji-master.owner = "pietroppeter";
  inputs.src-nimoji-master.repo = "nimoji";
  inputs.src-nimoji-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimoji-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimoji-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimoji-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}