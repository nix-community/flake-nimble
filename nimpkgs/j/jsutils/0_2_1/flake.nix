{
  description = ''Utils to work with javascript'';
  inputs.src-jsutils-0_2_1.flake = false;
  inputs.src-jsutils-0_2_1.type = "github";
  inputs.src-jsutils-0_2_1.owner = "kidandcat";
  inputs.src-jsutils-0_2_1.repo = "jsutils";
  inputs.src-jsutils-0_2_1.ref = "refs/tags/0.2.1";
  
  outputs = { self, nixpkgs, src-jsutils-0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsutils-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jsutils-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}