{
  description = ''Utils to work with javascript'';
  inputs.src-jsutils-0_2_5.flake = false;
  inputs.src-jsutils-0_2_5.type = "github";
  inputs.src-jsutils-0_2_5.owner = "kidandcat";
  inputs.src-jsutils-0_2_5.repo = "jsutils";
  inputs.src-jsutils-0_2_5.ref = "refs/tags/0.2.5";
  
  outputs = { self, nixpkgs, src-jsutils-0_2_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsutils-0_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jsutils-0_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}