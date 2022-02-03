{
  description = ''An entity component system package'';
  inputs.src-arksys-master.flake = false;
  inputs.src-arksys-master.type = "github";
  inputs.src-arksys-master.owner = "wolfadex";
  inputs.src-arksys-master.repo = "arksys";
  inputs.src-arksys-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-arksys-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arksys-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-arksys-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}