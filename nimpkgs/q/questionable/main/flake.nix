{
  description = ''Elegant optional types'';
  inputs.src-questionable-main.flake = false;
  inputs.src-questionable-main.type = "github";
  inputs.src-questionable-main.owner = "markspanbroek";
  inputs.src-questionable-main.repo = "questionable";
  inputs.src-questionable-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-questionable-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-questionable-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-questionable-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}