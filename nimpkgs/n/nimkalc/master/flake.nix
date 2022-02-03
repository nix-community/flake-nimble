{
  description = ''An advanced parsing library for mathematical expressions and equations'';
  inputs.src-nimkalc-master.flake = false;
  inputs.src-nimkalc-master.type = "github";
  inputs.src-nimkalc-master.owner = "nocturn9x";
  inputs.src-nimkalc-master.repo = "nimkalc";
  inputs.src-nimkalc-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimkalc-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimkalc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimkalc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}