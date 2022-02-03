{
  description = ''Utils to work with javascript'';
  inputs.src-jsutils-0_2_7.flake = false;
  inputs.src-jsutils-0_2_7.type = "github";
  inputs.src-jsutils-0_2_7.owner = "kidandcat";
  inputs.src-jsutils-0_2_7.repo = "jsutils";
  inputs.src-jsutils-0_2_7.ref = "refs/tags/0.2.7";
  
  outputs = { self, nixpkgs, src-jsutils-0_2_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsutils-0_2_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jsutils-0_2_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}