{
  description = ''A simple extensible i18n engine.'';
  inputs.src-barbarus-master.flake = false;
  inputs.src-barbarus-master.type = "github";
  inputs.src-barbarus-master.owner = "cjxgm";
  inputs.src-barbarus-master.repo = "barbarus";
  inputs.src-barbarus-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-barbarus-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-barbarus-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-barbarus-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}