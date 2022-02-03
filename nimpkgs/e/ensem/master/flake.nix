{
  description = ''Support for ensemble file format and arithmetic using jackknife/bootstrap propagation of errors'';
  inputs.src-ensem-master.flake = false;
  inputs.src-ensem-master.type = "github";
  inputs.src-ensem-master.owner = "JeffersonLab";
  inputs.src-ensem-master.repo = "ensem";
  inputs.src-ensem-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ensem-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ensem-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ensem-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}