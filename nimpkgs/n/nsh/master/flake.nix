{
  description = ''nsh: Nim SHell(cross platform)'';
  inputs.src-nsh-master.flake = false;
  inputs.src-nsh-master.type = "github";
  inputs.src-nsh-master.owner = "gmshiba";
  inputs.src-nsh-master.repo = "nish";
  inputs.src-nsh-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nsh-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nsh-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nsh-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}