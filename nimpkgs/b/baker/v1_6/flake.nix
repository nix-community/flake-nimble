{
  description = ''Static website generation'';
  inputs.src-baker-v1_6.flake = false;
  inputs.src-baker-v1_6.type = "github";
  inputs.src-baker-v1_6.owner = "jasonrbriggs";
  inputs.src-baker-v1_6.repo = "baker";
  inputs.src-baker-v1_6.ref = "refs/tags/v1.6";
  
  outputs = { self, nixpkgs, src-baker-v1_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-baker-v1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-baker-v1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}