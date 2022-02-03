{
  description = ''Module for working with RIS citation files'';
  inputs.src-ris-master.flake = false;
  inputs.src-ris-master.type = "github";
  inputs.src-ris-master.owner = "achesak";
  inputs.src-ris-master.repo = "nim-ris";
  inputs.src-ris-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ris-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ris-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ris-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}