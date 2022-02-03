{
  description = ''View nim packages in your browser.'';
  inputs.src-nimlist-v0_1_5.flake = false;
  inputs.src-nimlist-v0_1_5.type = "github";
  inputs.src-nimlist-v0_1_5.owner = "flenniken";
  inputs.src-nimlist-v0_1_5.repo = "nimlist";
  inputs.src-nimlist-v0_1_5.ref = "refs/tags/v0.1.5";
  
  outputs = { self, nixpkgs, src-nimlist-v0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimlist-v0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimlist-v0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}