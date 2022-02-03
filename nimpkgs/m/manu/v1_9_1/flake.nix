{
  description = ''Matrix library'';
  inputs.src-manu-v1_9_1.flake = false;
  inputs.src-manu-v1_9_1.type = "github";
  inputs.src-manu-v1_9_1.owner = "planetis-m";
  inputs.src-manu-v1_9_1.repo = "manu";
  inputs.src-manu-v1_9_1.ref = "refs/tags/v1.9.1";
  
  outputs = { self, nixpkgs, src-manu-v1_9_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-manu-v1_9_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-manu-v1_9_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}