{
  description = ''A tiny static file web server.'';
  inputs.src-srv-v0_3_1.flake = false;
  inputs.src-srv-v0_3_1.type = "github";
  inputs.src-srv-v0_3_1.owner = "me7";
  inputs.src-srv-v0_3_1.repo = "srv";
  inputs.src-srv-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, src-srv-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-srv-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-srv-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}