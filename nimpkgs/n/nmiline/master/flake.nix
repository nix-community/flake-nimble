{
  description = ''Plotting tool using NiGui'';
  inputs.src-nmiline-master.flake = false;
  inputs.src-nmiline-master.type = "github";
  inputs.src-nmiline-master.owner = "mzteruru52";
  inputs.src-nmiline-master.repo = "NmiLine";
  inputs.src-nmiline-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nmiline-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nmiline-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nmiline-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}