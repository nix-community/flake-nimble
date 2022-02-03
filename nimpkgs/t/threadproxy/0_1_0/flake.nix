{
  description = ''Simplify Nim Inter-Thread Communication'';
  inputs.src-threadproxy-0_1_0.flake = false;
  inputs.src-threadproxy-0_1_0.type = "github";
  inputs.src-threadproxy-0_1_0.owner = "jackhftang";
  inputs.src-threadproxy-0_1_0.repo = "threadproxy.nim";
  inputs.src-threadproxy-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-threadproxy-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-threadproxy-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-threadproxy-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}