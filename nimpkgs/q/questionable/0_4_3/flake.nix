{
  description = ''Elegant optional types'';
  inputs.src-questionable-0_4_3.flake = false;
  inputs.src-questionable-0_4_3.type = "github";
  inputs.src-questionable-0_4_3.owner = "markspanbroek";
  inputs.src-questionable-0_4_3.repo = "questionable";
  inputs.src-questionable-0_4_3.ref = "refs/tags/0.4.3";
  
  outputs = { self, nixpkgs, src-questionable-0_4_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-questionable-0_4_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-questionable-0_4_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}