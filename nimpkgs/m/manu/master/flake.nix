{
  description = ''Matrix library'';
  inputs.src-manu-master.flake = false;
  inputs.src-manu-master.type = "github";
  inputs.src-manu-master.owner = "planetis-m";
  inputs.src-manu-master.repo = "manu";
  inputs.src-manu-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-manu-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-manu-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-manu-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}