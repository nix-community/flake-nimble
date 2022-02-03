{
  description = ''Ratio calculator on your terminal'';
  inputs.src-miter-master.flake = false;
  inputs.src-miter-master.type = "github";
  inputs.src-miter-master.owner = "rafmst";
  inputs.src-miter-master.repo = "miter";
  inputs.src-miter-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-miter-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-miter-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-miter-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}