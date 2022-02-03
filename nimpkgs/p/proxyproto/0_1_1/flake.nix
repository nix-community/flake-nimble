{
  description = ''PROXY Protocol enabler for aged programs'';
  inputs.src-proxyproto-0_1_1.flake = false;
  inputs.src-proxyproto-0_1_1.type = "github";
  inputs.src-proxyproto-0_1_1.owner = "ba0f3";
  inputs.src-proxyproto-0_1_1.repo = "libproxy.nim";
  inputs.src-proxyproto-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-proxyproto-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-proxyproto-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-proxyproto-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}