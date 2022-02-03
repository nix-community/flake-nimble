{
  description = ''Simplify Nim Inter-Thread Communication'';
  inputs.src-threadproxy-master.flake = false;
  inputs.src-threadproxy-master.type = "github";
  inputs.src-threadproxy-master.owner = "jackhftang";
  inputs.src-threadproxy-master.repo = "threadproxy.nim";
  inputs.src-threadproxy-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-threadproxy-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-threadproxy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-threadproxy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}