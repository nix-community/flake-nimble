{
  description = ''Unsafe in-place slicing'';
  inputs.src-memviews-master.flake = false;
  inputs.src-memviews-master.type = "github";
  inputs.src-memviews-master.owner = "ReneSac";
  inputs.src-memviews-master.repo = "memviews";
  inputs.src-memviews-master.ref = "refs/heads/master";
  
  
  inputs."c_alikes".url = "path:../../../c/c_alikes";
  inputs."c_alikes".type = "github";
  inputs."c_alikes".owner = "riinr";
  inputs."c_alikes".repo = "flake-nimble";
  inputs."c_alikes".ref = "flake-pinning";
  inputs."c_alikes".dir = "nimpkgs/c/c_alikes";

  outputs = { self, nixpkgs, src-memviews-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-memviews-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-memviews-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}