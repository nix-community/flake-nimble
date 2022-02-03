{
  description = ''A Funge-98 interpreter written in nim'';
  inputs.src-nimfunge98-master.flake = false;
  inputs.src-nimfunge98-master.type = "other";
  inputs.src-nimfunge98-master.owner = "adyxax";
  inputs.src-nimfunge98-master.repo = "nimfunge98";
  inputs.src-nimfunge98-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimfunge98-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfunge98-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimfunge98-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}