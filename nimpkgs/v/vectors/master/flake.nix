{
  description = ''Simple multidimensional vector math'';
  inputs.src-vectors-master.flake = false;
  inputs.src-vectors-master.type = "github";
  inputs.src-vectors-master.owner = "blamestross";
  inputs.src-vectors-master.repo = "nimrod-vectors";
  inputs.src-vectors-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-vectors-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vectors-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vectors-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}