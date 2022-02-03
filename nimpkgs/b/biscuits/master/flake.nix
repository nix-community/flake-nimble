{
  description = ''better cookie handling'';
  inputs.src-biscuits-master.flake = false;
  inputs.src-biscuits-master.type = "github";
  inputs.src-biscuits-master.owner = "achesak";
  inputs.src-biscuits-master.repo = "nim-biscuits";
  inputs.src-biscuits-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-biscuits-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-biscuits-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-biscuits-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}