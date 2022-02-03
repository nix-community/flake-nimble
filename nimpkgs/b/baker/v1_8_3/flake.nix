{
  description = ''Static website generation'';
  inputs.src-baker-v1_8_3.flake = false;
  inputs.src-baker-v1_8_3.type = "github";
  inputs.src-baker-v1_8_3.owner = "jasonrbriggs";
  inputs.src-baker-v1_8_3.repo = "baker";
  inputs.src-baker-v1_8_3.ref = "refs/tags/v1.8.3";
  
  outputs = { self, nixpkgs, src-baker-v1_8_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-baker-v1_8_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-baker-v1_8_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}