{
  description = ''This module is a port of the Java implementation of the Zhang-Shasha algorithm for tree edit distance'';
  inputs.src-zhsh-master.flake = false;
  inputs.src-zhsh-master.type = "github";
  inputs.src-zhsh-master.owner = "PMunch";
  inputs.src-zhsh-master.repo = "zhangshasha";
  inputs.src-zhsh-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-zhsh-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zhsh-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zhsh-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}