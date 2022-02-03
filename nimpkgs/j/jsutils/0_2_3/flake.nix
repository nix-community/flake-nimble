{
  description = ''Utils to work with javascript'';
  inputs.src-jsutils-0_2_3.flake = false;
  inputs.src-jsutils-0_2_3.type = "github";
  inputs.src-jsutils-0_2_3.owner = "kidandcat";
  inputs.src-jsutils-0_2_3.repo = "jsutils";
  inputs.src-jsutils-0_2_3.ref = "refs/tags/0.2.3";
  
  outputs = { self, nixpkgs, src-jsutils-0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsutils-0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jsutils-0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}