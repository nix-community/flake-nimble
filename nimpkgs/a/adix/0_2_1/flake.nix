{
  description = ''An Adaptive Index Library For Nim'';
  inputs.src-adix-0_2_1.flake = false;
  inputs.src-adix-0_2_1.type = "github";
  inputs.src-adix-0_2_1.owner = "c-blake";
  inputs.src-adix-0_2_1.repo = "adix";
  inputs.src-adix-0_2_1.ref = "refs/tags/0.2.1";
  
  outputs = { self, nixpkgs, src-adix-0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-adix-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-adix-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}