{
  description = ''Bindings for libjwt'';
  inputs.src-libjwt-master.flake = false;
  inputs.src-libjwt-master.type = "github";
  inputs.src-libjwt-master.owner = "nimscale";
  inputs.src-libjwt-master.repo = "nim-libjwt";
  inputs.src-libjwt-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-libjwt-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libjwt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libjwt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}