{
  description = ''A lightweight discrete event simulator'';
  inputs.src-desim-master.flake = false;
  inputs.src-desim-master.type = "other";
  inputs.src-desim-master.owner = "";
  inputs.src-desim-master.repo = "raw.githubusercontent.com";
  inputs.src-desim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-desim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-desim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-desim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}