{
  description = ''unicode symbols'';
  inputs.src-figures-master.flake = false;
  inputs.src-figures-master.type = "github";
  inputs.src-figures-master.owner = "lmariscal";
  inputs.src-figures-master.repo = "figures";
  inputs.src-figures-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-figures-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-figures-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-figures-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}