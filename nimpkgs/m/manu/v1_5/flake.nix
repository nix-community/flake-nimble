{
  description = ''Matrix library'';
  inputs.src-manu-v1_5.flake = false;
  inputs.src-manu-v1_5.type = "github";
  inputs.src-manu-v1_5.owner = "planetis-m";
  inputs.src-manu-v1_5.repo = "manu";
  inputs.src-manu-v1_5.ref = "refs/tags/v1.5";
  
  outputs = { self, nixpkgs, src-manu-v1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-manu-v1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-manu-v1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}