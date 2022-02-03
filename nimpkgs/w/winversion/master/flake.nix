{
  description = ''This package allows you to determine the running version of the Windows operating system.'';
  inputs.src-winversion-master.flake = false;
  inputs.src-winversion-master.type = "github";
  inputs.src-winversion-master.owner = "rockcavera";
  inputs.src-winversion-master.repo = "winversion";
  inputs.src-winversion-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-winversion-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-winversion-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-winversion-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}