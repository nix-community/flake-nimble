{
  description = ''syntax sugar for assignments'';
  inputs.src-assigns-master.flake = false;
  inputs.src-assigns-master.type = "github";
  inputs.src-assigns-master.owner = "metagn";
  inputs.src-assigns-master.repo = "assigns";
  inputs.src-assigns-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-assigns-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-assigns-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-assigns-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}