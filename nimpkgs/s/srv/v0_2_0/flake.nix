{
  description = ''A tiny static file web server.'';
  inputs.src-srv-v0_2_0.flake = false;
  inputs.src-srv-v0_2_0.type = "github";
  inputs.src-srv-v0_2_0.owner = "me7";
  inputs.src-srv-v0_2_0.repo = "srv";
  inputs.src-srv-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-srv-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-srv-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-srv-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}