{
  description = ''Metaprogramming tools for Nim'';
  inputs.src-metatools-master.flake = false;
  inputs.src-metatools-master.type = "github";
  inputs.src-metatools-master.owner = "jxy";
  inputs.src-metatools-master.repo = "metatools";
  inputs.src-metatools-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-metatools-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-metatools-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-metatools-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}