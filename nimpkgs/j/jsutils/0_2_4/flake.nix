{
  description = ''Utils to work with javascript'';
  inputs.src-jsutils-0_2_4.flake = false;
  inputs.src-jsutils-0_2_4.type = "github";
  inputs.src-jsutils-0_2_4.owner = "kidandcat";
  inputs.src-jsutils-0_2_4.repo = "jsutils";
  inputs.src-jsutils-0_2_4.ref = "refs/tags/0.2.4";
  
  outputs = { self, nixpkgs, src-jsutils-0_2_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsutils-0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jsutils-0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}