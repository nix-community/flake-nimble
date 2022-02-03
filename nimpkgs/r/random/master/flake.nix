{
  description = ''Pseudo-random number generation library inspired by Python'';
  inputs.src-random-master.flake = false;
  inputs.src-random-master.type = "github";
  inputs.src-random-master.owner = "oprypin";
  inputs.src-random-master.repo = "nim-random";
  inputs.src-random-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-random-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-random-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-random-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}