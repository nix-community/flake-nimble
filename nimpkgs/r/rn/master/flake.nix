{
  description = ''minimal, performant mass file renamer'';
  inputs.src-rn-master.flake = false;
  inputs.src-rn-master.type = "github";
  inputs.src-rn-master.owner = "xioren";
  inputs.src-rn-master.repo = "rn";
  inputs.src-rn-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-rn-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rn-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rn-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}