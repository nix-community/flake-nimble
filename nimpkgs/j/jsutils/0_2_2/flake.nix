{
  description = ''Utils to work with javascript'';
  inputs.src-jsutils-0_2_2.flake = false;
  inputs.src-jsutils-0_2_2.type = "github";
  inputs.src-jsutils-0_2_2.owner = "kidandcat";
  inputs.src-jsutils-0_2_2.repo = "jsutils";
  inputs.src-jsutils-0_2_2.ref = "refs/tags/0.2.2";
  
  outputs = { self, nixpkgs, src-jsutils-0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsutils-0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jsutils-0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}