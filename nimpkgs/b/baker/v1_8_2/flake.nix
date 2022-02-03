{
  description = ''Static website generation'';
  inputs.src-baker-v1_8_2.flake = false;
  inputs.src-baker-v1_8_2.type = "github";
  inputs.src-baker-v1_8_2.owner = "jasonrbriggs";
  inputs.src-baker-v1_8_2.repo = "baker";
  inputs.src-baker-v1_8_2.ref = "refs/tags/v1.8.2";
  
  outputs = { self, nixpkgs, src-baker-v1_8_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-baker-v1_8_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-baker-v1_8_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}