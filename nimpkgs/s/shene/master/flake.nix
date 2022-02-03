{
  description = ''Interface for Nim.'';
  inputs.src-shene-master.flake = false;
  inputs.src-shene-master.type = "github";
  inputs.src-shene-master.owner = "xflywind";
  inputs.src-shene-master.repo = "shene";
  inputs.src-shene-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-shene-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shene-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-shene-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}