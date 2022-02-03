{
  description = ''Control AnyBar instances with Nim'';
  inputs.src-Anybar-master.flake = false;
  inputs.src-Anybar-master.type = "github";
  inputs.src-Anybar-master.owner = "ba0f3";
  inputs.src-Anybar-master.repo = "anybar.nim";
  inputs.src-Anybar-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-anybar-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-anybar-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-anybar-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}