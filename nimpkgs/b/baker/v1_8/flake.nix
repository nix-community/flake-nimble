{
  description = ''Static website generation'';
  inputs.src-baker-v1_8.flake = false;
  inputs.src-baker-v1_8.type = "github";
  inputs.src-baker-v1_8.owner = "jasonrbriggs";
  inputs.src-baker-v1_8.repo = "baker";
  inputs.src-baker-v1_8.ref = "refs/tags/v1.8";
  
  outputs = { self, nixpkgs, src-baker-v1_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-baker-v1_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-baker-v1_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}