{
  description = ''Provides a macro to curry function'';
  inputs.src-nim_curry-master.flake = false;
  inputs.src-nim_curry-master.type = "github";
  inputs.src-nim_curry-master.owner = "zer0-star";
  inputs.src-nim_curry-master.repo = "nim-curry";
  inputs.src-nim_curry-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nim_curry-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim_curry-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nim_curry-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}