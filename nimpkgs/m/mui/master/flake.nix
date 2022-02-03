{
  description = ''A tiny immediate-mode UI library'';
  inputs.src-mui-master.flake = false;
  inputs.src-mui-master.type = "github";
  inputs.src-mui-master.owner = "angluca";
  inputs.src-mui-master.repo = "mui";
  inputs.src-mui-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-mui-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mui-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mui-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}