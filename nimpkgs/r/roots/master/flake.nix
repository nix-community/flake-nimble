{
  description = ''Root finding functions for Nim'';
  inputs.src-roots-master.flake = false;
  inputs.src-roots-master.type = "github";
  inputs.src-roots-master.owner = "BarrOff";
  inputs.src-roots-master.repo = "roots";
  inputs.src-roots-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-roots-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-roots-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-roots-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}