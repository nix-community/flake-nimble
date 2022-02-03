{
  description = ''TeaFiles provide fast read/write access to time series data'';
  inputs.src-teafiles-master.flake = false;
  inputs.src-teafiles-master.type = "github";
  inputs.src-teafiles-master.owner = "andreaferretti";
  inputs.src-teafiles-master.repo = "nim-teafiles";
  inputs.src-teafiles-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-teafiles-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-teafiles-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-teafiles-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}