{
  description = ''libffi wrapper for Nim.'';
  inputs.src-libffi-master.flake = false;
  inputs.src-libffi-master.type = "github";
  inputs.src-libffi-master.owner = "Araq";
  inputs.src-libffi-master.repo = "libffi";
  inputs.src-libffi-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-libffi-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libffi-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libffi-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}