{
  description = ''A rules engine'';
  inputs.src-pararules-master.flake = false;
  inputs.src-pararules-master.type = "github";
  inputs.src-pararules-master.owner = "paranim";
  inputs.src-pararules-master.repo = "pararules";
  inputs.src-pararules-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-pararules-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pararules-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pararules-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}