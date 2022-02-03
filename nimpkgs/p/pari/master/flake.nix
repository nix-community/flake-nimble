{
  description = ''Pari/GP C library wrapper'';
  inputs.src-pari-master.flake = false;
  inputs.src-pari-master.type = "github";
  inputs.src-pari-master.owner = "lompik";
  inputs.src-pari-master.repo = "pari.nim";
  inputs.src-pari-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-pari-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pari-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pari-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}