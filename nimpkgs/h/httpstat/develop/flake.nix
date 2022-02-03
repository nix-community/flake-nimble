{
  description = ''curl statistics made simple '';
  inputs.src-httpstat-develop.flake = false;
  inputs.src-httpstat-develop.type = "github";
  inputs.src-httpstat-develop.owner = "ucpr";
  inputs.src-httpstat-develop.repo = "httpstat";
  inputs.src-httpstat-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, src-httpstat-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpstat-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-httpstat-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}