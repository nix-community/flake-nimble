{
  description = ''libffi wrapper for Nim.'';
  inputs.src-libffi-1_0_3.flake = false;
  inputs.src-libffi-1_0_3.type = "github";
  inputs.src-libffi-1_0_3.owner = "Araq";
  inputs.src-libffi-1_0_3.repo = "libffi";
  inputs.src-libffi-1_0_3.ref = "refs/tags/1.0.3";
  
  outputs = { self, nixpkgs, src-libffi-1_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libffi-1_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libffi-1_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}