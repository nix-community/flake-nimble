{
  description = ''curl statistics made simple '';
  inputs.src-httpstat-v0_1_0.flake = false;
  inputs.src-httpstat-v0_1_0.type = "github";
  inputs.src-httpstat-v0_1_0.owner = "ucpr";
  inputs.src-httpstat-v0_1_0.repo = "httpstat";
  inputs.src-httpstat-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-httpstat-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpstat-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-httpstat-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}