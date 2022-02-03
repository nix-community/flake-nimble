{
  description = ''curl statistics made simple '';
  inputs.src-httpstat-v0_1_2.flake = false;
  inputs.src-httpstat-v0_1_2.type = "github";
  inputs.src-httpstat-v0_1_2.owner = "ucpr";
  inputs.src-httpstat-v0_1_2.repo = "httpstat";
  inputs.src-httpstat-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-httpstat-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpstat-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-httpstat-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}