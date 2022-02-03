{
  description = ''Simple variant generator empowering easy heterogeneous type operations'';
  inputs.src-sumtypes-master.flake = false;
  inputs.src-sumtypes-master.type = "github";
  inputs.src-sumtypes-master.owner = "beef331";
  inputs.src-sumtypes-master.repo = "sumtypes";
  inputs.src-sumtypes-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sumtypes-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sumtypes-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sumtypes-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}