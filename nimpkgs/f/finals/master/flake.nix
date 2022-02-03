{
  description = ''Transparently declare single-set attributes on types.'';
  inputs.src-finals-master.flake = false;
  inputs.src-finals-master.type = "github";
  inputs.src-finals-master.owner = "quelklef";
  inputs.src-finals-master.repo = "nim-finals";
  inputs.src-finals-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-finals-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-finals-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-finals-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}