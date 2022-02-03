{
  description = ''Wrapper-less C/C++ interop for Nim'';
  inputs.src-nimline-master.flake = false;
  inputs.src-nimline-master.type = "github";
  inputs.src-nimline-master.owner = "fragcolor-xyz";
  inputs.src-nimline-master.repo = "nimline";
  inputs.src-nimline-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimline-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimline-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimline-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}