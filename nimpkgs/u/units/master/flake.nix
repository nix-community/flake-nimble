{
  description = '' Statically-typed quantity units.'';
  inputs.src-units-master.flake = false;
  inputs.src-units-master.type = "github";
  inputs.src-units-master.owner = "Udiknedormin";
  inputs.src-units-master.repo = "NimUnits";
  inputs.src-units-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-units-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-units-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-units-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}