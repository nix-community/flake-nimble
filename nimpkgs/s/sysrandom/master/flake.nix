{
  description = ''A simple library to generate random data, using the system's PRNG.'';
  inputs.src-sysrandom-master.flake = false;
  inputs.src-sysrandom-master.type = "github";
  inputs.src-sysrandom-master.owner = "euantorano";
  inputs.src-sysrandom-master.repo = "sysrandom.nim";
  inputs.src-sysrandom-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sysrandom-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sysrandom-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sysrandom-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}