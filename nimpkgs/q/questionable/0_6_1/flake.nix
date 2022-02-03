{
  description = ''Elegant optional types'';
  inputs.src-questionable-0_6_1.flake = false;
  inputs.src-questionable-0_6_1.type = "github";
  inputs.src-questionable-0_6_1.owner = "markspanbroek";
  inputs.src-questionable-0_6_1.repo = "questionable";
  inputs.src-questionable-0_6_1.ref = "refs/tags/0.6.1";
  
  outputs = { self, nixpkgs, src-questionable-0_6_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-questionable-0_6_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-questionable-0_6_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}