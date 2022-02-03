{
  description = ''Library to parse ANSI escape codes'';
  inputs.src-ansiparse-master.flake = false;
  inputs.src-ansiparse-master.type = "github";
  inputs.src-ansiparse-master.owner = "PMunch";
  inputs.src-ansiparse-master.repo = "ansiparse";
  inputs.src-ansiparse-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ansiparse-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ansiparse-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ansiparse-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}