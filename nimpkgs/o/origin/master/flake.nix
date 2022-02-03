{
  description = ''A graphics math library'';
  inputs.src-origin-master.flake = false;
  inputs.src-origin-master.type = "github";
  inputs.src-origin-master.owner = "mfiano";
  inputs.src-origin-master.repo = "origin.nim";
  inputs.src-origin-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-origin-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-origin-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-origin-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}