{
  description = ''Wrapper of the AVbin library for the Nim language.'';
  inputs.src-avbin-master.flake = false;
  inputs.src-avbin-master.type = "github";
  inputs.src-avbin-master.owner = "Vladar4";
  inputs.src-avbin-master.repo = "avbin";
  inputs.src-avbin-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-avbin-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-avbin-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-avbin-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}