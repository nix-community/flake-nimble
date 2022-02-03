{
  description = ''An Adaptive Index Library For Nim'';
  inputs.src-adix-0_2_0.flake = false;
  inputs.src-adix-0_2_0.type = "github";
  inputs.src-adix-0_2_0.owner = "c-blake";
  inputs.src-adix-0_2_0.repo = "adix";
  inputs.src-adix-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, src-adix-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-adix-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-adix-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}