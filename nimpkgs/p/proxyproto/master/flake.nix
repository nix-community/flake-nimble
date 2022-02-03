{
  description = ''PROXY Protocol enabler for aged programs'';
  inputs.src-proxyproto-master.flake = false;
  inputs.src-proxyproto-master.type = "github";
  inputs.src-proxyproto-master.owner = "ba0f3";
  inputs.src-proxyproto-master.repo = "libproxy.nim";
  inputs.src-proxyproto-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-proxyproto-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-proxyproto-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-proxyproto-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}