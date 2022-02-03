{
  description = ''Support for ensemble file format and arithmetic using jackknife/bootstrap propagation of errors'';
  inputs.src-ensem-v1_0_0.flake = false;
  inputs.src-ensem-v1_0_0.type = "github";
  inputs.src-ensem-v1_0_0.owner = "JeffersonLab";
  inputs.src-ensem-v1_0_0.repo = "ensem";
  inputs.src-ensem-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, src-ensem-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ensem-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ensem-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}