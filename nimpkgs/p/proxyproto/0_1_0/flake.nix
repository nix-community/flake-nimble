{
  description = ''PROXY Protocol enabler for aged programs'';
  inputs.src-proxyproto-0_1_0.flake = false;
  inputs.src-proxyproto-0_1_0.type = "github";
  inputs.src-proxyproto-0_1_0.owner = "ba0f3";
  inputs.src-proxyproto-0_1_0.repo = "libproxy.nim";
  inputs.src-proxyproto-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-proxyproto-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-proxyproto-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-proxyproto-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}