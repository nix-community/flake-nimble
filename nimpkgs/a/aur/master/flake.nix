{
  description = ''A client for the Arch Linux User Repository (AUR)'';
  inputs.src-aur-master.flake = false;
  inputs.src-aur-master.type = "github";
  inputs.src-aur-master.owner = "hnicke";
  inputs.src-aur-master.repo = "aur.nim";
  inputs.src-aur-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-aur-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-aur-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-aur-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}