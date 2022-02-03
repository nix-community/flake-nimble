{
  description = ''256 colors for shell'';
  inputs.src-rainbow-master.flake = false;
  inputs.src-rainbow-master.type = "github";
  inputs.src-rainbow-master.owner = "Willyboar";
  inputs.src-rainbow-master.repo = "rainbow";
  inputs.src-rainbow-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-rainbow-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rainbow-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rainbow-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}