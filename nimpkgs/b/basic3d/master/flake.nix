{
  description = ''Deprecated module for vector/matrices operations.'';
  inputs.src-basic3d-master.flake = false;
  inputs.src-basic3d-master.type = "github";
  inputs.src-basic3d-master.owner = "nim-lang";
  inputs.src-basic3d-master.repo = "basic3d";
  inputs.src-basic3d-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-basic3d-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-basic3d-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-basic3d-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}