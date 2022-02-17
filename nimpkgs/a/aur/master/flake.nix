{
  description = ''A client for the Arch Linux User Repository (AUR)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-aur-master.flake = false;
  inputs.src-aur-master.type = "github";
  inputs.src-aur-master.owner = "hnicke";
  inputs.src-aur-master.repo = "aur.nim";
  inputs.src-aur-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-aur-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-aur-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-aur-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}